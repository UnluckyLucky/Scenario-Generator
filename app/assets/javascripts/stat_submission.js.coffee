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

$(document).ready(ready)
$(document).on('page:load', ready)