json.array!(@updates) do |update|
  json.extract! update, :id, :first_name, :user_id, :savings_amount, :monthly_savings, :interest_rate
  json.url update_url(update, format: :json)
end
