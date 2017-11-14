# == Schema Information
#
# Table name: question_game_mappings
#
#  id          :integer          not null, primary key
#  question_id :integer
#  game_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class QuestionGameMapping < ApplicationRecord
  belongs_to :question
  belongs_to :game
end
