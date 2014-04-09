guessLetter = (c) ->
  correct = false
  $('.answer').each (i, element) =>
    if c == $(element).data().letter
      $(element).text($(element).data().letter)
      correct = true
  correct
    

$ ->
  word = $('#randomword')
  attempt = 0
  wrong = 0
  $('.guess').click (e) ->
    e.preventDefault()

    # this button has been pressed
    $(this).addClass('disabled')

    # increase number of attempt
    attempt++
    $('#attempt').text(attempt)

    # alert $('.letter').data().letter
    if guessLetter($(this).text()) == false
      wrong++
      $('#wrong').text(wrong)

    ## if max attempt
    if counter > 5
      # disable all buttons
      $('.guess').addClass('disabled')
      # reveal answer
      
    # alert word.val()
    
    return false
