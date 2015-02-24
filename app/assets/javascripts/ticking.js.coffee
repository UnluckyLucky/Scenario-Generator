ready = ->
  $('.item').click ->
    $(@).toggleClass('active')


$(document).ready(ready)
$(document).on('page:load', ready)