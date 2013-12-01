json.array!(@building_energy_ratings) do |building_energy_rating|
  json.extract! building_energy_rating, :building_rating, :annual_energy
  json.url building_energy_rating_url(building_energy_rating, format: :json)
end
