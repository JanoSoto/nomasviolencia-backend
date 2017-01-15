json.extract! header, :id, :section, :content, :created_at, :updated_at
json.url header_url(header, format: :json)