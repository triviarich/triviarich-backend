class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :text, null: false, default: ''
      t.string :a, null: false, default: ''
      t.string :b, null: false, default: ''
      t.string :c, null: false, default: ''
      t.string :d, null: false, default: ''
      t.integer :answer, null: false, default: 0

      t.timestamps
    end
  end
end
