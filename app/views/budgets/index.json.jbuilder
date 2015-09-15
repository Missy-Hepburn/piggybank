json.array!(@budgets) do |budget|
  json.extract! budget, :id, :savings_target, :monthly_savings, :monthly_budget, :user_id
  json.url budget_url(budget, format: :json)
end
