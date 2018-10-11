require 'rubygems'
require 'nokogiri'
require'open-uri'
require 'pry'






def get_the_email_of_a_townhal_from_its_webpage	
page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/95/vaureal.html'))
adresses = page.css ("td")
puts adresses[7].text
end
puts get_the_email_of_a_townhal_from_its_webpage	


def get_all_the_urls_of_val_doise_townhalls
page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
liens = page.css ("a")
liens.each{|liens| puts liens ['href']}
end
puts get_all_the_urls_of_val_doise_townhalls

 	
   
   





   