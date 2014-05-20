json.array!(@water_rights) do |water_right|
  json.extract! water_right, :id, :number, :flow_cfs, :flow_ac_ft, :sole_supply_acres, :place_of_use, :change_application_number, :proof_due_date
  json.url water_right_url(water_right, format: :json)
end
