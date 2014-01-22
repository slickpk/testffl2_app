json.array!(@teamplayers) do |teamplayer|
  json.extract! teamplayer, :playerid, :teamid
  json.url teamplayer_url(teamplayer, format: :json)
end