class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :title, {null: false}
      t.string :description, {null: false}
      t.string :players
      t.string :image
      t.string :time
      t.string :publisher
      t.timestamps
    end
  end
end
