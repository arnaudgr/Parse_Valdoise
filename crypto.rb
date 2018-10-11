
require 'rubygems'
require 'nokogiri'
require'open-uri'
require 'pry'


def trader_obscur
	x = 0
	y = 0
array = []
array_crypto = []
page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
i = 1
while i == 1

crypto_currency = page.css("a[class=price]").each do |cours|
  
  	array[x]=  cours.text
  	x+= 1

  
	end
	
crypto_name = page.css("a[class=link-secondary]").each do |noms| 
	
array_crypto[y] = noms.text
	
y+= 1
end
h = Hash[array_crypto.zip array]
puts h

end
sleep 3600

end




trader_obscur
