class RemoveUserIdFromProfiles < ActiveRecord::Migration[7.0]
  def change
    remove_index :profiles, :user_id
    remove_column :profiles, :user_id, :integer
  end
end
