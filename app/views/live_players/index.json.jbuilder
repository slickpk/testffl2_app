json.array!(@live_players) do |live_player|
  json.extract! live_player, :Nid, :Plyr, :Team
  json.url live_player_url(live_player, format: :json)
end