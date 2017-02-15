class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.integer :category_id, {null: false}
      t.integer :game_id, {null: false}
      t.timestamps
    end
  end
end
