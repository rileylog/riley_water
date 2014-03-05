json.array!(@diversions) do |diversion|
  json.extract! diversion, :id, :name, :type
  json.url diversion_url(diversion, format: :json)
end
