json.array!(@price_earnings) do |price_earning|
  json.extract! price_earning, :id, :price, :earnings, :petotal
  json.url price_earning_url(price_earning, format: :json)
end
