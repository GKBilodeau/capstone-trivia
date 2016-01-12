class CreateCompletes < ActiveRecord::Migration
  def change
    create_table :completes do |t|
      t.integer :user_id
      t.string :game_id

      t.timestamps null: false
    end
  end
end
