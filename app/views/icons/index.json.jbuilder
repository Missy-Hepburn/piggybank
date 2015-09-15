json.array!(@icons) do |icon|
  json.extract! icon, :id, :title, :price, :user_id
  json.url icon_url(icon, format: :json)
end
