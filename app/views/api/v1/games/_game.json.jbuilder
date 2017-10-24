json.id game.id
json.open game.open
json.questions do
  json.array! game.questions, :id, :text, :a, :b, :c, :d, :answer
end