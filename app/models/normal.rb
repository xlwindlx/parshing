require 'nokogiri'
require 'open-uri'

class Normal < ActiveRecord::Base
    normaltable = Nokogiri::HTML(open(File.open("교양테이블.html")))
    
    @normal = normaltable.css("table#culLctTmtblDscTbl tbody tr")
    @normal.each do |t|
    
    Normal.create
    {
        :div => t.css("td")[1].text,
        :title => t.css("td.ta_1 a").text,
        :grades =>t.css("td")[5].text,
        :prof =>t.css("td")[6].text,
        :day =>t.css("td")[7].text[0,0],                  
        :time =>t.css("td")[7].text.split("(")[0],     
        :classroom =>t.css("td")[7].text.split("(")[1],  
    }
    end
end
