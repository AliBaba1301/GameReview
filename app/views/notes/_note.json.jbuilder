json.extract! note, :id, :notes, :game_id, :created_at, :updated_at
json.url note_url(note, format: :json)
