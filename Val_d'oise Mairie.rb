require 'rubygems'
require 'nokogiri'
require'open-uri'
require 'pry'

require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))


 	
   domain_page = doc.xpath ('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
   

css = 'table.table:nth-child(1) > tbody:nth-child(3) > tr:nth-child(4) > td:nth-child(2)'

doc.css(css).each do |email|
  puts email