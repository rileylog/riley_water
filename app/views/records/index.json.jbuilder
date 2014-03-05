json.array!(@records) do |record|
  json.extract! record, :id, :name, :number, :type
  json.url record_url(record, format: :json)
end
