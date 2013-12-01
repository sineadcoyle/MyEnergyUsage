json.array!(@oil_bills) do |oil_bill|
  json.extract! oil_bill, :start_date, :end_date, :volume, :net_cost, :gross_cost, :members_id
  json.url oil_bill_url(oil_bill, format: :json)
end
