class RenameReplyToDescriptionInReplies < ActiveRecord::Migration[7.0]
  def change
    rename_column :replies, :reply, :description
  end
end
