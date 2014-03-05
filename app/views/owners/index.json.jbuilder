json.array!(@owners) do |owner|
  json.extract! owner, :id, :name, :phone, :email, :address_1, :address_2, :city, :zip, :county
  json.url owner_url(owner, format: :json)
end
