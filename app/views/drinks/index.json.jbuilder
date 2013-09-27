json.array!(@drinks) do |drink|
  json.extract! drink, :name
  json.url drink_url(drink, format: :json)
end
