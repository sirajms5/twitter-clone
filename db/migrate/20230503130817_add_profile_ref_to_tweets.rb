class AddProfileRefToTweets < ActiveRecord::Migration[7.0]
  def change
    add_reference :tweets, :profile, null: false, foreign_key: true
  end
end
