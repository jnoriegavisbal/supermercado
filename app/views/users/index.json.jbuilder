json.array!(@users) do |user|
  json.extract! user, :id, :name, :lastname, :tel, :dir
  json.url user_url(user, format: :json)
end
