json.extract! session, :id, :scandate, :sequence, :created_at, :updated_at
json.url session_url(session, format: :json)
