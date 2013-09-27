json.array!(@games) do |game|
  json.extract! game, :name, :category_id
  json.url game_url(game, format: :json)
end
