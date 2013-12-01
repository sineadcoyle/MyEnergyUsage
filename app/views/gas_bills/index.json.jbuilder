json.array!(@gas_bills) do |gas_bill|
  json.extract! gas_bill, :start_date, :end_date, :gas_start_reading, :gas_end_reading, :net_cost, :gross_cost, :active, :members
  json.url gas_bill_url(gas_bill, format: :json)
end
