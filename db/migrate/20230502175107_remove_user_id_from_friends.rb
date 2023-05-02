class RemoveUserIdFromFriends < ActiveRecord::Migration[7.0]
  def change
    remove_index :friends, :user_id
    remove_column :friends, :user_id, :integer
  end
end
