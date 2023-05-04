class AddTweetToReplies < ActiveRecord::Migration[7.0]
  def change
    add_reference :replies, :tweet, null: false, foreign_key: true
  end
end
