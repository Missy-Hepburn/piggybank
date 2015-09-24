json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :user_id, :icon_id, :price
  json.url transaction_url(transaction, format: :json)
end
