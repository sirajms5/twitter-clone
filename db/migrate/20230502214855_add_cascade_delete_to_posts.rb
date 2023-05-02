class AddCascadeDeleteToPosts < ActiveRecord::Migration[7.0]
  def change
    def change
      add_foreign_key :posts, :users, on_delete: :cascade
    end
  end
end
