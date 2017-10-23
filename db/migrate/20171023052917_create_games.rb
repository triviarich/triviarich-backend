class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.boolean :open, null: false, default: true

      t.timestamps
    end
  end
end
