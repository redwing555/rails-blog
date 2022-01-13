class AddUserPostJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :posts, table_name: :likes do |t|
      t.index :user_id, unique: true
      t.index :post_id, unique: true

      t.timestamps
    end
  end
end
