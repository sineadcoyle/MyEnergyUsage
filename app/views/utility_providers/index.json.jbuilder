json.array!(@utility_providers) do |utility_provider|
  json.extract! utility_provider, :name, :co2_coefficient, :active
  json.url utility_provider_url(utility_provider, format: :json)
end
