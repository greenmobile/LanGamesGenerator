json.array!(@kategories) do |kategory|
  json.extract! kategory, :name
  json.url kategory_url(kategory, format: :json)
end
