json.array!(@weeklyicons) do |weeklyicon|
  json.extract! weeklyicon, :id, :user_id, :weekly_expenses
  json.url weeklyicon_url(weeklyicon, format: :json)
end
