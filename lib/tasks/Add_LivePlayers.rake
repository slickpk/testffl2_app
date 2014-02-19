desc "Import wish list"
task :populate => :environment do


require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'mechanize'

agent = Mechanize.new

#This is a ruby scrape using nokogiri

$n = 1

#This is just a list of nfl players from every team

time = Time.now
curtime = time.strftime("%A-%I%p")
#system "pause"

if curtime == "Tuesday-08AM" || curtime == "Thursday-08AM" || curtime == "Saturday-09AM" || curtime == "Tuesday-10PM"
db = SQLite3::Database.new('db/development.sqlite3')
			        results = db.execute("Select Abrv, Team from abbrvs")	
			 #puts results

urls = Array.new(32)

#This gets all the URLS for the team rosters
$x = 0
$t = 0
while $x < 32 do 
	teamname = results[$x][1]
	teamname = teamname.split(' ')
	teamname = teamname[0].downcase + teamname[1].downcase
	newurl = "http://www.nfl.com/teams/" + teamname + "/roster?team=" + results[$x][0]
	
	url = newurl

	#puts url
	#system "pause"

	p = $x

	urls[$x] = url
	$x += 1
end

u = 0

#This gets the page from the array to read
while u < 32
	doc = Nokogiri::HTML(open(urls[u]))
	links = doc.css("td").css("a")

	#puts links.length
	#system "pause"

	pid = Array.new(links.length)

	lplayers = Array.new(links.length)

	puts doc.css("title").text


		count = 0

		#This reads the page for the players and links
		doc.css("td").each do |td|
	
		#for y in 0..links.length

			#plyr = doc.css("td")[y].css("a").text
			
			#puts plyr.empty?
			#system "pause"

			#puts y

			plyr = td.css("a").text
			
			#This creates the Player name if the variable above
			#is not empty
			if !plyr.empty?
				#puts count
				#puts plyr
				#system "pause"

				t = $n
				a = t
				name = plyr.split(',')
				#puts name
				#system "pause"

				pname = name[1] + ' ' + name[0]

				#puts pname
				lplayers[count] = pname
				#system "pause"
				count = count + 1

				
			end
			
		end
		
		#Just a list of the current team roster being saved
		for i in 0..links.length
			puts lplayers[i]
		end

		#Save to table here
		y = 0
		while y < links.length
				#puts y
				plyr2 = links[y]["href"]
				#puts plyr2
				#system "pause"


				plyr3 = plyr2.split('/')

				#puts plyr3
				#system "pause"

				
			 	pid = plyr3[3]
				#puts pid
				#system "pause"

				tname =  results[$t][1]
				#puts tname

				LP = LivePlayer.new(:Nid => pid, :Plyr => lplayers[y], :Team => tname)
				LP.save
				
				$n = $n + 1
				y += 1
		end
		$t = $t + 1
		u += 1
end
end
end
		


