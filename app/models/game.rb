# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  open       :boolean          default(TRUE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Game < ApplicationRecord
  has_many :question_game_mappings, dependent: :destroy
  has_many :questions, through: :question_game_mappings

  scope :open, -> { where(open: true) }
end
