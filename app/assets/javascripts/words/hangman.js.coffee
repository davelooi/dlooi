$ ->
  attempt = 0
  wrong = 0
  word = ""

  # Counters
  increaseCounters = (correct) ->
    attempt++
    wrong++ if not correct
    updateCountersDisplay()

  resetCounters = ->
    attempt = 0
    wrong = 0
    updateCountersDisplay()

  updateCountersDisplay = ->
    $('#attempt').text(attempt)
    $('#wrong').text(wrong)


  ###
    the Game
  ###

  # Guess a letter
  guessLetter = (c) ->
    correct = false
    $('.answer').each (i, element) =>
      if c == $(element).data().letter
        $(element).text($(element).data().letter)
        correct = true
    increaseCounters(correct)
    correct

  # get new word
  getNewWord = ->
    # reset guess buttons
    $('.guess').removeClass('disabled')
    
    # get a new word from server
    $.get '/words/getRandomWord', (data) ->
      word = data.word.toUpperCase()
      html = ''
      caWord = word.split('')
      for c in caWord
        html += '<span class="label label-danger answer" data-letter=' + c + '>'
        if c != '-'
          html += '_'
        else
          html += c
        html += '</span>'
      $('#my-answer').html(html)
      $('#bla').text(word)

  # bind new game button
  $('#new-game').click (e) ->
    e.preventDefault()
    startNewGame()
  
  startNewGame = ->
    resetCounters()
    getNewWord()

  # bind guess buttons
  bindButtons = ->
    $('.guess').click (e) ->
      e.preventDefault()

      # this button has been clicked
      $(this).addClass('disabled')

      # try this letter
      guessLetter($(this).text())

      ## if max attempt
      if wrong > 5
        # disable all buttons
        $('.guess').addClass('disabled')
        # reveal answer
        # prompt user
        alert "You Lose.."
  
  initGame = ->
    # bind button to hangman rules
    bindButtons()
    startNewGame()


  ###
    Page Load
  ###

  initGame()
