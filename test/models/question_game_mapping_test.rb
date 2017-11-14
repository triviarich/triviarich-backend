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

require 'test_helper'

class QuestionGameMappingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
