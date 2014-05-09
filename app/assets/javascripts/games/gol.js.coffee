###
# GAME
###
class GameOfLife
  rowSize: 50
  colSize: 50
  grid: []
  seed: 0.1

  constructor: () ->
    @initGrid()

  initGrid: () ->
    for row in [0..@rowSize-1]
      @grid[row] = []
      for col in [0..@colSize-1]
        @grid[row][col] = @createLife(row,col)

  createLife: (row, col) ->
      isAlive: Math.random() < @seed
      row: row
      col: col

###
# MAIN
###
$ ->
  game = 0
  canvas = null
  pxPerLife = 5

  initGame = ->
    game = new GameOfLife()
    pp game

  pp = (game) ->
    html = ''
    for row in game.grid
      for col in row
        html += if col.isAlive then '1' else '_'
      html += "<br>"
    $('#aaa').html html

  initGame()
