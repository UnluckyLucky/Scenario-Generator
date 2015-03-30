ready = ->

  submit_stat = (name, group) ->
    data = {
      name: name,
      group: group
    }

    $.post(
      '/stat', data
    )

  $('#paypal-form').on 'submit', ->
    submit_stat('Paypal button clicked')

  $('#mc-embedded-subscribe-form').on 'submit', ->
    submit_stat('Email submitted for subscription')

  $('#buy-game-link').on 'click', ->
    submit_stat(document.URL.split('/')[4].split('#')[0], 'a')

$(document).ready(ready)
$(document).on('page:load', ready)