namespace :updateTm do
desc "Inport Players from Fantasy Team"
task :updateA, [:Tmurl, :TidA] => :environment do |t, args|

require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'mechanize'

	#agent = Mechanize.new

	loginurl = "https://id2.s.nfl.com/fans/login?s=fantasy&returnTo=#{args.Tmurl}"

	puts loginurl

	agent = Mechanize.new{|a| a.ssl_version, a.verify_mode = 'SSLv3', OpenSSL::SSL::VERIFY_NONE}.get loginurl


	puts "It is in here now"

	puts "This is the selected Team URL: #{args.Tmurl}"

	
	form = agent.forms.first
	form.username = "stonecold18"
	form.password = "stunner1"
	form.submit

	
	form2 = agent.link_with(:text => "return to url").click

	$prevpid = 0

	tidA = "#{args.TidA}"

	form2.search(".what-playerCard").each do |item|
	  if item.text
		puts item.text
		l = item['href'].split('=')
		pid = l[2]

		i = LivePlayer.where(:Nid => pid).pluck(:id)
		puts "PID: " 
		puts pid 
		puts "id: "
	        puts i[0]

		if $prevpid != pid
			$prevpid = pid
		
			TP = Teamplayer.new(:playerid => i[0].to_i, :teamid => tidA, :live_player_id => i[0].to_i, :fteam_id => tidA)
			TP.save
		end
	  end
	end


url = "#{args.Tmurl}"
doc = Nokogiri::HTML(open(url))
puts doc.css("title").text
doc.css("div").each do |div|
	plyr = div.css("a").text
	if !plyr.empty?
		#name = plyr.split(',')
		#puts name[1] + ' ' + name[0]
		#puts plyr
	end
end

end
end
