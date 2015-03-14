json.array!(@mutuelles) do |mutuelle|
  json.extract! mutuelle, :id
  json.url mutuelle_url(mutuelle, format: :json)
end
