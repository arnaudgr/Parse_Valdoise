require 'rubygems'
require 'nokogiri'
require'open-uri'
require 'pry'

PAGE_URL = "http://annuaire-des-mairies.com/val-d-oise.html"

def first_page
page = Nokogiri::HTML(open(PAGE_URL))
news_links = page.css("a").select{|link| link['class'] == "lientxt"}
news_links.each{|link| puts link['href'] }
end
print first_page

#binding pry


page = Nokogiri::HTML(open("PAGE_URL/i/browse_letter/?letter=#{l}&page=#{p}"))
domains = page.xpath("//a[@class='lientxt']")
print domains.class
