desc "Import list"
task :populateA => :environment do


require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'mechanize'
require 'sqlite3'

agent = Mechanize.new

#This is a ruby scrape using nokogiri


#This first one is just a list of nfl players
url = "http://www.thedjfranksfeed.com/tm-abbreviations.php"
doc = Nokogiri::HTML(open(url))
puts doc.css("title").text

doc.css("td").each do |td|
	sect = td.css("h2").text
	sect = sect[1..sect.length]
	td.css("div, a").each do |div|
	plyr = div.css("a").text
			if !plyr.empty? && sect == "NFL FOOTBALL TEAMS"
				name = plyr.split('-').map(&:strip)

				if name[0] == "GNB"
					name[0] = "GB"
				elsif name[0] == "K.C"
					name[0] = "KC"
				elsif name[0] == "NWE"
					name[0] = "NE"
				elsif name[0] == "NOR"
					name[0] = "NO"
				elsif name[0] == "SDG"
					name[0] = "SD"
				elsif name[0] == "SFO"
					name[0] = "SF"
				elsif name[0] == "TAM"
					name[0] = "TB"
				end	

				tname = name[0] + ' ' + name[1] + ' ' + name[2]
				tname = tname[0..tname.rindex(' ') + 1] + tname[tname.rindex(' ') + 2..tname.length].downcase
				
				abbr =  tname[0..tname.index(' ')]
				puts abbr
				teamn = tname[tname.index(' ') + 1..tname.length]
				
				AB = Abbrv.new(:Abrv => abbr, :Team => teamn)
				AB.save
				

				
			else    
				next
			end
			
		end
end
end
