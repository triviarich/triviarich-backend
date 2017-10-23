class Question < ApplicationRecord
  enum answer: { a: 0, b: 1, c: 2, d: 4 }
end
