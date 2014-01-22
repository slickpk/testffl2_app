json.array!(@fteams) do |fteam|
  json.extract! fteam, :Team, :TeamUrl
  json.url fteam_url(fteam, format: :json)
end