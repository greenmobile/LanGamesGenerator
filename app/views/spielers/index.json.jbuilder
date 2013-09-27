json.array!(@spielers) do |spieler|
  json.extract! spieler, :name, :punkte
  json.url spieler_url(spieler, format: :json)
end
