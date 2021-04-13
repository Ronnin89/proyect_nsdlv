json.extract! profile, :id, :rut, :names, :last_names, :date_of_birth, :nationality, :sex, :address, :phone, :type_profile, :created_at, :updated_at
json.url profile_url(profile, format: :json)
