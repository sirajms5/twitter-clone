class AddCoverImageToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :cover_image, :text
  end
end
