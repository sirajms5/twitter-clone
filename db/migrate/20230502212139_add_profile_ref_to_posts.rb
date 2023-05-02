class AddProfileRefToPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :profile, null: false, foreign_key: true
  end
end
