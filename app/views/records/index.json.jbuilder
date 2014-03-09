json.array!(@records) do |record|
  json.extract! record, :id, :owner, :type, :source, :priority_date, :flow, :volume, :irrigation, :domestic, :stockwatering, :change_apps, :proof_due_date, :comments
  json.url record_url(record, format: :json)
end
