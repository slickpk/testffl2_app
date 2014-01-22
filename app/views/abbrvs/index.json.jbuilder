json.array!(@abbrvs) do |abbrv|
  json.extract! abbrv, :Abrv, :Team
  json.url abbrv_url(abbrv, format: :json)
end