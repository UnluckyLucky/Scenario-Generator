ready = ->
  $('.item').on ->
    $(@).toggleClass('active')

  $(".content").height($(document).height() - $('.header-2').height() + 2)

  $('.show-suggestion').on 'click', ->
    $('.suggestion-form').toggle()

  $(".menu-toggle").on 'click', (e) ->
    $("#wrapper").toggleClass("toggled")

$(document).ready(ready)
$(document).on('page:load', ready)