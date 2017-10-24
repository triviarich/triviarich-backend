# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  $('#button').click ->
    fetch('/api/v1/games/game_request.json')
    .then (response) ->
      throw new Error() if !response.ok
      response.json()
    .then (game) ->
      if game.open
        App.cable.subscriptions.create { channel: 'GamesChannel', id: game.id },
          received: (data) ->
            alert('Found!')
