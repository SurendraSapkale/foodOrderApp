json.extract! profile, :id, :name, :email, :contact_number, :picture, :created_at, :updated_at
json.url profile_url(profile, format: :json)
