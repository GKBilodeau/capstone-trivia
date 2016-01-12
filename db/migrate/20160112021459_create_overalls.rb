class CreateOveralls < ActiveRecord::Migration
  def change
    create_table :overalls do |t|
      t.integer :user_id
      t.integer :game_id
      t.decimal :game_score

      t.timestamps null: false
    end
  end
end
