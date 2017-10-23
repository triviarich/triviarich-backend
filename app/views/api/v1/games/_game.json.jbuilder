json.id game.id
json.questions do
  json.array! game.questions, :id, :text, :a, :b, :c, :d, :answer
end