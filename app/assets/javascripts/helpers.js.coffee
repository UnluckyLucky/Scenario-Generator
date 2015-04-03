ready = ->
  $(document).on 'click', '.item', ->
    $(@).toggleClass('active')

  $(".content").height($(document).height() - $('.header-2').height() + 12)

  $(document).on 'click', '.show-suggestion', ->
    $('.suggestion-form').toggle()

  $(".menu-toggle").on 'click', (e) ->
    $("#wrapper").toggleClass("toggled")

$(document).ready(ready)
$(document).on('page:load', ready)