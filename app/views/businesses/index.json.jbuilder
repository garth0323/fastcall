json.array!(@businesses) do |business|
  json.extract! business, :id, :name, :address, :city, :state, :zip, :phone
  json.url business_url(business, format: :json)
end
