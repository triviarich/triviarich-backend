class QuestionGameMapping < ApplicationRecord
  belongs_to :question
  belongs_to :game
end
