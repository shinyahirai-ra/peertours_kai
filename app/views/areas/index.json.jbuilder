json.array!(@areas) do |area|
  json.extract! area, :id, :name, :country_id
  json.url area_url(area, format: :json)
end
