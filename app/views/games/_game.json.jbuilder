json.extract! game, :id, :title, :description, :initial_price, :rating, :company_id, :farnchise_id, :company, :franchise, :platforms, :image, :created_at, :updated_at
json.url game_url(game, format: :json)
