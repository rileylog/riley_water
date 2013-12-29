json.array!(@wanteds) do |wanted|
  json.extract! wanted, :id, :area_id, :volume, :source, :description
  json.url wanted_url(wanted, format: :json)
end
