require 'rubygems'
require 'sqlite3'

db = SQLite3::Database.new('db/development.sqlite3')
			        results = db.execute("Select Abrv, Team from Abbrvs")	
				test1 = results[0][1].downcase
				test2 = test1[0..test1.index(' ') - 1]  + test1[test1.index(' ') + 1..test1.length]
					     puts test2
