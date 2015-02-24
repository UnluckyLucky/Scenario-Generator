ready = ->
  $('.reroll-column-button').click ->
    column_name_to_reroll = $(@).attr('id')
    game_name = document.URL.split('/')[4].split('#')[0]

    regular = {}
    spoiler = {}
    columns = $('.column.regular')

    $(columns).each (key, column) ->
      column_name = $(column).attr('id')
      items = $(column).children('.item').map( ->
        $(@).text().replace(/(\r\n|\n|\r|)/gm,"").trim()
      ).get()
      regular[column_name] = items


    columns = $('.column.spoiler')

    $(columns).each (key, column) ->
      column_name = $(column).attr('id')
      items = $(column).children('.item').map( ->
        $(@).text().replace(/(\r\n|\n|\r|)/gm,"").trim()
      ).get()
      spoiler[column_name] = items

    data = {
      game_name: game_name,
      column_name: column_name_to_reroll,
      r: regular,
      s: spoiler
    }

    $.get(
      '/reroll/column', data
    ).done( (data) ->
      document.open()
      document.write(data)
      document.close()
      location.hash = column_name_to_reroll;
    )


$(document).ready(ready)
$(document).on('page:load', ready)