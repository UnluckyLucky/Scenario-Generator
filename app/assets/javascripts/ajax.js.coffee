ready = ->
  $(document).on 'click', '.reroll-column-button', ->
    column_name_to_reroll = $(@).parent().attr('id')
    game_name = document.URL.split('/')[4].split('#')[0]

    existing_data = {}
    columns = $('.column')

    $(columns).each (key, column) ->
      column_name = $(column).attr('id')
      items = $(column).children('.item').map( ->
        $(@).text().replace(/(\r\n|\n|\r|)/gm,"").trim()
      ).get()
      console.log column_name
      console.log items
      existing_data[column_name] = items

    data = {
      game_name: game_name,
      column_name: column_name_to_reroll,
      existing_data: existing_data
    }

    $.get(
      '/reroll/column', data
    ).done( (data) ->
      document.open()
      document.write(data)
      document.close()
    )

$(document).ready(ready)
$(document).on('page:load', ready)