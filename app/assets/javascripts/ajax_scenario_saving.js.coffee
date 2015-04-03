ready = ->
  $('.save-button').on 'click', ->
    if $('.loading').is(':visible')
      return

    $(@).children('.loading').show()
    game_name = document.URL.split('/')[4].split('#')[0]
    existing_uuid = document.URL.split('/')[6]

    regular = {}
    spoiler = {}
    columns = $('.column.regular')

    $(columns).each (key, column) ->
      column_name = $(column).attr('id')
      items = $(column).children('.item').map( ->
        text = $(@).text().replace(/(\r\n|\n|\r|)/gm,"").trim()

        if $(@).hasClass('active')
          text = '@' + text

        return text
      ).get()
      regular[column_name] = items


    columns = $('.column.spoiler')

    $(columns).each (key, column) ->
      column_name = $(column).attr('id')
      items = $(column).children('.item').map( ->
        text = $(@).text().replace(/(\r\n|\n|\r|)/gm,"").trim()

        if $(@).hasClass('active')
          text = '@' + text

        return text
      ).get()
      spoiler[column_name] = items

    data = {
      game_name: game_name,
      r: regular,
      s: spoiler,
      uuid: existing_uuid
    }

    $.post(
      '/game/' + game_name + '/save', data
    )

$(document).ready(ready)
$(document).on('page:load', ready)