class LivePlayer < ActiveRecord::Base
	belongs_to :fteam
	has_many :fteam	
end
