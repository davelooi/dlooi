###
# GAME
###
class GameOfLife
  rowSize: 0
  colSize: 0
  grid: []
  seed: 5

  constructor: (row,col) ->
    @rowSize = row
    @colSize = col
    @initGrid()

  initGrid: () ->
    for row in [0...@rowSize]
      @grid[row] = []
      for col in [0...@colSize]
        @grid[row][col] = @createRandomLife row,col

  createRandomLife: (row,col) ->
    alive = Math.floor(Math.random() * @seed) == 0
    @createLife alive,row,col

  createLife: (alive,row,col) ->
    isAlive: alive
    row: row
    col: col

  tick: ->
    temp = []
    for row in [0...@rowSize]
      temp[row] = []
      for col in [0...@colSize]
        temp[row][col] = @createLife(@nextState(row,col),row,col)
    @grid = temp

  nextState: (row,col) ->
    @applyRule(
      @aliveNeighbours(row,col),
      @grid[row][col].isAlive)

  applyRule: (neighbours,isAlive) ->
    if neighbours == 3
      return true
    else if neighbours == 2 and isAlive
      return true
    else
      return false

  aliveNeighbours: (row,col) ->
    count = 0
    for y in [-1..1]
      for x in [-1..1]
        if y == 0 and x == 0 then continue

        if row + y < 0 then continue
        if col + x < 0 then continue
        if row + y > @rowSize - 1 then continue
        if col + x > @colSize - 1 then continue

        if @grid[row + y][col + x].isAlive == true
          count++
    count

###
# CANVAS
###
class CanvasOfLife
  constructor: (game,canvasId,pxPerLife) ->
    @game = game
    @row = @game.rowSize
    @col = @game.colSize
    @canvasId = canvasId
    @pxPerLife = pxPerLife

    # set canvas size
    canvas = document.getElementById @canvasId
    canvas.width = @col * @pxPerLife
    canvas.height = @row * @pxPerLife

  draw: ->
    $('#'+@canvasId).clearCanvas()
    for row in [0...@row]
      for col in [0...@col]
        @drawLife @game.grid[row][col]

  drawLife: (life) ->
    if life.isAlive then color = '#000000' else color = '#C0C0C0'
    $('#'+@canvasId).drawRect({
      fillStyle: color,
      y: life.row*@pxPerLife,
      x: life.col*@pxPerLife, 
      width: @pxPerLife,
      height: @pxPerLife
    });

###
# MAIN
###
$ ->
  game = 0
  canvas = 0
  pxPerLife = 5
  row = 100
  col = 100

  initGame = ->
    newGame()
    tick()

  newGame = ->
    game = new GameOfLife row,col
    canvas = new CanvasOfLife game,'golCanvas',pxPerLife
    canvas.draw()

  tick = ->
    game.tick()
    canvas.draw()
    setTimeout tick, 1000

  $('#btnReset').click (e) ->
    e.preventDefault()
    newGame()

  ## OUTPUT
  pp = (game) ->
    html = ''
    for row in game.grid
      for col in row
        html += if col.isAlive then '1' else '_'
      html += "<br>"
    $('#aaa').html html

  initGame()
