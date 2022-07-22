json.extract! customer, :id, :name, :email, :phone, :DOB, :address, :vehicle_type, :vehicle_number, :created_at, :updated_at
json.url customer_url(customer, format: :json)
