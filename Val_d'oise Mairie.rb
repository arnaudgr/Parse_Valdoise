require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'



def get_the_email_of_a_townhall_from_its_webpage	
page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/95/vaureal.html'))
email = page.css ("td")
puts email[7].text
end
 get_the_email_of_a_townhall_from_its_webpage	


def get_all_the_urls_of_val_doise_townhalls
page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
link = page.css ("a")
link.each  do |link| 
puts link['href']
end
end
 get_all_the_urls_of_val_doise_townhalls

 	
   
   
   
