$ ->
  counter = 0
  $('.alpha').click (e) ->
    e.preventDefault()
    counter++
    $(this).addClass('disabled')
    $('#counter').text(counter)
    return false
    
