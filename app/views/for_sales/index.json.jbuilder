json.array!(@for_sales) do |for_sale|
  json.extract! for_sale, :id, :area_id, :volume, :source, :description, :transferable_to
  json.url for_sale_url(for_sale, format: :json)
end
