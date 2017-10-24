class Game < ApplicationRecord
  has_many :question_game_mappings, dependent: :destroy
  has_many :questions, through: :question_game_mappings

  scope :open, -> { where(open: true) }
end
