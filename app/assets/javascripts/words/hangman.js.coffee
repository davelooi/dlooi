$ ->
  attempt = 0
  wrong = 0
  word = ""

  guessLetter = (c) ->
    correct = false
    $('.answer').each (i, element) =>
      if c == $(element).data().letter
        $(element).text($(element).data().letter)
        correct = true
    correct
    increaseCounters(correct)

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

  # initialize new game
  hangman = ->
    $('.guess').removeClass('disabled')
    resetCounters()
    
  # bind guess buttons
  bindButtons = ->
    $('.guess').click (e) ->
      e.preventDefault()

      # this button has been clicked
      $(this).addClass('disabled')

      # try this letter
      guess = guessLetter($(this).text())

      ## if max attempt
      if wrong > 5
        # disable all buttons
        $('.guess').addClass('disabled')
        # reveal answer
        # prompt user
        alert "You Lose.."

  # start new game
  $('#my-link').click (e) ->
    e.preventDefault()
    $.get '/words/getRandomWord', (data) ->
      word = data.word.toUpperCase()
      html = ''
      caWord = word.split('')
      for c in caWord
        html += '<span class="label label-danger answer" data-letter=' + c + '">'
        if c != '-'
          html += '_'
        else
          html += c
        html += '</span>'
      $('#my-answer').html(html)
      $('#bla').text(word)
      hangman()

  bindButtons()



