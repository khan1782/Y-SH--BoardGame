class CreateFriendships < ActiveRecord::Migration[5.0]
  def change
    create_table :friendships do |t|
      t.integer :adder_id, {null: false}
      t.integer :confirmer_id, {null: false}
      t.boolean :confirmed?, {default: false}
      t.timestamps
    end
  end
end
