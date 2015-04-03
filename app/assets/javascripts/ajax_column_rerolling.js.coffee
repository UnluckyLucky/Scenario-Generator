ready = ->
  $(document).on 'click', '.reroll-column-button', ->
    column_name_to_reroll = $(@).attr('id')
    game_name = document.URL.split('/')[4].split('#')[0]

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
      column_name: column_name_to_reroll,
      r: regular,
      s: spoiler
    }

    $.get(
      '/reroll/column', data
    ).done( (data) ->
      $('#generator-columns').empty()
      $('#generator-columns').append(data)
    )


$(document).ready(ready)
$(document).on('page:load', ready)