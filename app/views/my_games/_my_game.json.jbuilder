json.extract! my_game, :id, :year, :company, :name, :price, :evaluation, :comment, :already, :created_at, :updated_at
json.url my_game_url(my_game, format: :json)
