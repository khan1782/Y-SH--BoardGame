class CreateUserGames < ActiveRecord::Migration[5.0]
  def change
    create_table :user_games do |t|
      t.integer :user_id, {null: false}
      t.integer :game_id, {null: false}
      t.timestamps
    end
  end
end
