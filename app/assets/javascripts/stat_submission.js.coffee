ready = ->

  submit_stat = (name) ->
    data = {
      name: name
    }

    $.post(
      '/stat', data
    )

  $('#paypal-form').on 'submit', ->
    submit_stat('Paypal button clicked')

  $('#mc-embedded-subscribe-form').on 'submit', ->
    submit_stat('Email submitted for subscription')

  $('#buy-game-link').on 'click', ->
    submit_stat('Get game link clicked')

$(document).ready(ready)
$(document).on('page:load', ready)