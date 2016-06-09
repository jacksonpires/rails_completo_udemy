json.array!(@kinds) do |kind|
  json.extract! kind, :id, :description
  json.url kind_url(kind, format: :json)
end
