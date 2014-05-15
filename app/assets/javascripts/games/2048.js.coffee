###
# GAME
###
class Game2048
  gameOver: false
  gameWin: false
  gameLose: false
  score: 0
  grid: []

  constructor: (startTiles) ->
    @grid = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
    #@grid = [[0,1,2,3],[4,5,6,7],[8,9,10,11],[12,13,14,15]]
    @score = 0
    if startTiles > 0
      for i in [0..startTiles-1]
        @addNewTile()

  ## TICK
  addNewTile: ->
    zero = @countZero()
    return if !zero # if no space for new tile
    @setNewTile(Math.floor(Math.random() * zero) + 1)

  setNewTile: (count)-> # 1..16
    return if !count # return if countZero == 0
    for row in [0..3]
      for col in [0..3]
        if @grid[row][col] == 0
          count--
          if count == 0
            @grid[row][col] = (Math.floor(Math.random() * 2) + 1) * 2
            break

  countZero: ->
    zero = 0
    for row in @grid
      for col in row
        zero++ if !col
    zero # 0..16

  ## MOVE ## this is the main function for the game
  move: (direction) ->
    tempGrid = @grid.slice(0)
    return if @gameOver
    switch direction
      when 'left'  then @moveLeft(true)
      when 'right' then @moveRight(true)
      when 'up'    then @moveUp(true)
      when 'down'  then @moveDown(true)
      when 'cheat' then @grid[0][0] = 2048
    if @checkWin()
      @gameOver = true
      @gameWin = true
    else if @checkLose()
      @gameOver = true
      @gameLose = true

    # add tile only if something moved
    if not @gridEqual(tempGrid,@grid) then @addNewTile()
    return @gameOver

  moveLeft: (addToScore) ->
    @shiftLeft()
    score = @mergeEqual()
    @shiftLeft()
    if addToScore
      @score += score

  moveRight: (addToScore) ->
    @gridClockwise()
    @gridClockwise()
    @moveLeft(addToScore)
    @gridClockwise()
    @gridClockwise()

  moveUp: (addToScore) ->
    @gridClockwise()
    @gridClockwise()
    @gridClockwise()
    @moveLeft(addToScore)
    @gridClockwise()

  moveDown: (addToScore) ->
    @gridClockwise()
    @moveLeft(addToScore)
    @gridClockwise()
    @gridClockwise()
    @gridClockwise()

  ## GRID
  shiftLeft: ->
    for row in [0..3]
      @grid[row] = @grid[row].filter (x) -> x > 0
      gridLen = 4 - @grid[row].length
      if gridLen != 0
        for i in [1..gridLen]
          @grid[row].push 0

  mergeEqual: ->
    addedScore = 0
    for row in [0..3]
      for col in [0..2]
        if @grid[row][col] != 0
          if @grid[row][col] == @grid[row][col+1]
            @grid[row][col] = @grid[row][col] * 2
            @grid[row][col+1] = 0
            addedScore += @grid[row][col]
    addedScore

  gridClockwise: ->
    temp = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
    for row in [0..3]
      for col in [0..3]
        temp[row][col] = @grid[3-col][row]
    @grid = temp

  ## RULE
  checkWin: ->
    for row in @grid
      for col in row
        if col == 2048
          return true
    return false

  checkLose: ->
    # there are zero(empty cell), game not over
    return false if @countZero() != 0

    # check for possible move
    !@possibleMove() # game lost

  possibleMove: ->
    tempGrid = @grid.slice(0)
    for i in [0..3] # try all direction
      @moveLeft(false)
      @gridClockwise()

    if @gridEqual(@grid,tempGrid)
      # still same, nothing moved
      ## GAME OVER
      return false
    @grid = tempGrid.slice(0)
    return true

  gridEqual: (a, b) ->
    for row in [0..3]
      for col in [0..3]
        if a[row][col] != b[row][col]
          return false
    return true

###############
# MAIN
###############
$ ->
  game = 0
  initGame = ->
    game = new Game2048(4)
    pp game

  ## Bind BUTTON
  $('#btnLeft').click (e) ->
    e.preventDefault()
    game.move('left')
    pp game

  $('#btnRight').click (e) ->
    e.preventDefault()
    game.move('right')
    pp game

  $('#btnUp').click (e) ->
    e.preventDefault()
    game.move('up')
    pp game

  $('#btnDown').click (e) ->
    e.preventDefault()
    game.move('down')
    pp game

  $('#btnPlay').click (e) ->
    e.preventDefault()
    initGame()    

  ## Bind Keypress
  $('body').keydown (e) ->
    # alert e.which
    switch e.which
      when 37 then game.move('left')
      when 65 then game.move('left')
      when 38 then game.move('up')
      when 87 then game.move('up')
      when 39 then game.move('right')
      when 68 then game.move('right')
      when 40 then game.move('down')
      when 83 then game.move('down')

      when 67 then game.move('cheat')
    pp game

  ## Update Grid
  pp = (game) ->
    for row in [0..3]
      for col in [0..3]
        cell = '#t'+row+col
        $(cell).html game.grid[row][col]
    pScore game

  pScore = (game) ->
    html = "<p>score " + game.score + "</p>"
    $('#score').html html
    $('#gameOver').html(if game.gameOver then "Game Over" else "")
    $('#gameWin').html(if game.gameWin then "You WIN..!!" else "")
    $('#gameLose').html(if game.gameLose then "You Lost" else "")

  initGame()
