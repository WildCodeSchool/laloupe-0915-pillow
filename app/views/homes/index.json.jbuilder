json.array!(@homes) do |home|
  json.extract! home, :id, :post
  json.url home_url(home, format: :json)
end
