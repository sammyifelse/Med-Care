json.extract! med, :id, :first_name, :last_name, :phone, :email, :DOB, :Adress, :created_at, :updated_at
json.url med_url(med, format: :json)
