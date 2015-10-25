json.array!(@leads) do |lead|
  json.extract! lead, :id, :params, :url
  json.url lead_url(lead, format: :json)
end
