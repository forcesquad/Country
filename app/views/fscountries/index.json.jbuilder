json.array!(@fscountries) do |fscountry|
  json.extract! fscountry, :id, :name, :ddi, :currency
  json.url fscountry_url(fscountry, format: :json)
end
