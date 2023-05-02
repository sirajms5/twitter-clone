class DropFriendsUsersTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :friends_users
  end
end
