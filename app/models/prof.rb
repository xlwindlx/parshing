require 'nokogiri'
require 'open-uri'

class Prof < ActiveRecord::Base
    proftabledata = Nokogiri::HTML(open(File.open("./전공테이블.html")))
    
    @prof = proftabledata.css("table#mjLctTmtblDscTbl//tbody//tr")
    @prof.each do |f|
    
    Prof.create
    {
        :div => f.css("td")[3].text.strip,
        :title => f.css("td.ta_1//a").text.strip,
        :grades =>f.css("td")[2].text.strip,
        :grade =>f.css("td")[7].text.strip,
        :subject =>f.css("td")[1].text.strip[0,0],                      # 첫글자만 자르기
        :proffesion =>f.css("td")[8].text.strip.split("(")[0],          # (기준으로 앞까지
        :day =>f.css("td")[9].text.strip.split("(")[1],                 # (기준으로 뒤까지
        :time =>f.css("td")[9].text.strip,
        :classroom =>f.css("td")[9].text.strip
    }
    end
end
