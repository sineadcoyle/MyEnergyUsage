json.array!(@electricity_bills) do |electricity_bill|
  json.extract! electricity_bill, :start_date, :end_date, :electricity_day_consumption, :electricity_night_consumption, :day_cost, :night_cost, :gross_cost, :active, :members_id
  json.url electricity_bill_url(electricity_bill, format: :json)
end
