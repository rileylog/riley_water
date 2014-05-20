json.array!(@point_of_diversions) do |point_of_diversion|
  json.extract! point_of_diversion, :id, :name
  json.url point_of_diversion_url(point_of_diversion, format: :json)
end
