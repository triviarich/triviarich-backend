class CreateQuestionGameMappings < ActiveRecord::Migration[5.1]
  def change
    create_table :question_game_mappings do |t|
      t.references :question, foreign_key: true
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
