if @game
  json.found true
  json.game do
    json.partial! 'game', game: @game
  end
else
  json.found false
end