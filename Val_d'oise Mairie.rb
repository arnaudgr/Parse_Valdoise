require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'




 	
   
   


PAGE_URL = "http://annuaire-des-mairies.com/val-d-oise.html"
=begin
def first_page
page = Nokogiri::HTML(open(PAGE_URL))
news_links = page.css("a").select{|link| link['class'] == "lientxt"}
news_links.each{|link| puts link['href'] }
end
#print first_page
=end


    def phase1
    doc = Nokogiri::HTML(open (PAGE_URL))
    c = 0
    mairie = Array.new

        url_mairies = doc.css('.lientxt').each do |links|
        	mairie[c] = "http://annuaire-des-mairies.com" + links['href'][1..-1]
          c += 1
          end

    return mairie
    end



    def get_the_email_of_a_townhal_from_its_webpage(phase)
      arr_phas1 = Array.new
      x = 0
      while phase[x]
      doc = Nokogiri::HTML(open(phase[x]))
      mail = doc.css("tr")
      arr_phas1[x] = mail.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
      x += 1
    end
    p arr_phas1
    end

get_the_email_of_a_townhal_from_its_webpage(phase1)

