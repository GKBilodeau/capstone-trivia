class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :user_id
      t.integer :game_id
      t.decimal :game_score

      t.timestamps null: false
    end
  end
end
