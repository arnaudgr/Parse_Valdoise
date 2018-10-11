require 'rubygems'
require 'nokogiri'   
require 'open-uri'




def trader_obscur
	x = 0
	y = 0
array_first_name = []
array_name = []
array_email = []
page = Nokogiri::HTML(open('http://www2.assemblee-nationale.fr/deputes/liste/alphabetique'))
i = 1
while i == 1

get_email = page.xpath('/html/body/div[3]/div/div/div/section[2]/div/div/div/article/div[4]/section/dl/dd[2]/a')
  
  	array_email[x]= get_email.text
  	x+= 1
	end
	
mail = page.xpath('/html/body/div[3]/div/div/div/section[1]/div/article/div[2]/h1').map 
	
array_name[y] = mail['href']	

y+= 1

puts array_name

end
trader_obscur