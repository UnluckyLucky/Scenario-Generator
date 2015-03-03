ready = ->
  $('.content').height(-10)
  $(".content").height($(document).height() - $('.header-2').height() + 2)

$(window).resize(ready)
$(document).ready(ready)
$(document).on('page:load', ready)