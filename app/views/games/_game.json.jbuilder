json.extract! game, :id, :date, :opponent, :place, :start_time, :score, :note, :created_at, :updated_at
json.url game_url(game, format: :json)
