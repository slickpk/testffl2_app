desc "Import wish list"
task :import_list => :environment do


require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'mechanize'

agent = Mechanize.new

#This is a ruby scrape using nokogiri

#This first one is just a list of nfl players
url = "http://www.nfl.com/teams/washingtonredskins/roster?team=WAS"
doc = Nokogiri::HTML(open(url))
puts doc.css("title").text
doc.css("td").each do |td|
	plyr = td.css("a").text
	if !plyr.empty?
		name = plyr.split(',')
		puts name[1] + ' ' + name[0]

		LivePlayers.create!(:Plyr => name[1] + ' ' + name[0])
	end
end
end


