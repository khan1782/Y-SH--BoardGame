class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :title, {null: false}
      t.integer :min_players
      t.integer :max_players
      t.integer :playing_time
      t.integer :year_published
      t.integer :bgg_rating
      t.string :image
      t.string :thumbnail
      t.timestamps
    end
  end
end
