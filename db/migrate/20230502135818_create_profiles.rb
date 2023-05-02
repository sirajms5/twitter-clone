class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :country
      t.string :province
      t.string :city
      t.string :university_college
      t.text :image_url

      t.timestamps
    end
  end
end
