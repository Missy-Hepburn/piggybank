json.array!(@monthlyicons) do |monthlyicon|
  json.extract! monthlyicon, :id, :user_id, :monthly_expenses
  json.url monthlyicon_url(monthlyicon, format: :json)
end
