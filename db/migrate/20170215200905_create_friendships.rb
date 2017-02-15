class CreateFriendships < ActiveRecord::Migration[5.0]
  def change
    create_table :friendships do |t|
      t.integer :user_id, {null: false}
      t.integer :friend_id, {null: false}
      t.boolean :pending?, {null: false}
      t.timestamps
    end
  end
end
