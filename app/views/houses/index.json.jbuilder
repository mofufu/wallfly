json.array!(@houses) do |house|
  json.extract! house, :id, :name, :address, :city, :state, :zip, :user_id, :note
  json.url house_url(house, format: :json)
end
