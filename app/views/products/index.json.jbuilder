json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :expdate, :user_id
  json.url product_url(product, format: :json)
end
