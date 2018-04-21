json.extract! patient, :id, :name, :surname, :age, :phone, :address, :email, :created_at, :updated_at
json.url patient_url(patient, format: :json)
