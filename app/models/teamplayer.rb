class Teamplayer < ActiveRecord::Base
	belongs_to :live_player
	belongs_to :fteam
        delegate :Plyr, to: :live_player
	delegate :Team, to: :live_player
	delegate :Nid, to: :live_player
	delegate :name_team, to: :live_player
	delegate :fanteam, to: :fteam

end
