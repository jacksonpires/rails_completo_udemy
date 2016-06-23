json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :email, :kind_id, :rmk
  json.url contact_url(contact, format: :json)
end
