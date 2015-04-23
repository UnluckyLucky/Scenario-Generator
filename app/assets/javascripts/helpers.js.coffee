ready = ->

  setTimeout(( ->
    headerHeight = $('.header-2').height() - 10
    positionString = 'center ' + headerHeight + 'px'

    $('body').css('background-position', positionString)
  ), 50)

  $(document).on 'click', '.item', ->
    $(@).toggleClass('active')

  $(document).on 'click', '.show-suggestion', ->
    $('.suggestion-form').toggle()

  $(".menu-toggle").on 'click', (e) ->
    $("#wrapper").toggleClass("toggled")

$(document).ready(ready)
$(document).on('page:load', ready)