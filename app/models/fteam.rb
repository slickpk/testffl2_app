class Fteam < ActiveRecord::Base
	#belongs_to :liveplayer
	has_many :teamplayers
	has_many :live_players, through: :teamplayers
	#has_and_belongs_to_many :liveplayers
end

