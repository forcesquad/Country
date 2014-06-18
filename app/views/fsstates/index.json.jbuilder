json.array!(@fsstates) do |fsstate|
  json.extract! fsstate, :id, :name, :acronym, :fscountries_id
  json.url fsstate_url(fsstate, format: :json)
end
