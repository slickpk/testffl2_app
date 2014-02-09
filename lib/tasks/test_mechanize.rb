require 'rubygems'
require 'mechanize'
require 'open-uri'

agent = Mechanize.new{|a| a.ssl_version, a.verify_mode = 'SSLv3', OpenSSL::SSL::VERIFY_NONE}.get "https://id2.s.nfl.com/fans/login?s=fantasy&returnTo=http%3A%2F%2Ffantasy.nfl.com%2Fleague%2F406029%2Fteam%2F1"

form = agent.forms.first
form.username = "stonecold18"
form.password = "stunner1"
form.submit


form2 = agent.link_with(:text => "return to url").click

form2.search(".what-playerCard").each do |item|
  if item.text
	puts item.text
  end
end


url = "http://fantasy.nfl.com/league/439889/team/7"
doc = Nokogiri::HTML(open(url))
puts doc.css("title").text
doc.css("div").each do |div|
	plyr = div.css("a").text
	if !plyr.empty?
		#name = plyr.split(',')
		#puts name[1] + ' ' + name[0]
		puts plyr
	end
end
