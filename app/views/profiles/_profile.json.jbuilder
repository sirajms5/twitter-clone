json.extract! profile, :id, :first_name, :last_name, :country, :province, :city, :university_college, :image_url, :created_at, :updated_at
json.url profile_url(profile, format: :json)
