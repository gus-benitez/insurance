json.extract! customer, :id, :first_name, :last_name, :birthday, :gender, :mobile_phone, :other_phone, :email, :address, :city, :state, :zip_code, :comments, :created_at, :updated_at
json.url customer_url(customer, format: :json)
