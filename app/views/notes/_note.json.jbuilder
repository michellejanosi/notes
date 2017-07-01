json.extract! note, :id, :title, :notes, :created_at, :updated_at
json.url note_url(note, format: :json)
