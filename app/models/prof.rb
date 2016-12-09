require 'nokogiri'
require 'open-uri'

class Prof < ActiveRecord::Base
    validates :validation, :uniqueness => true
    proftable = Nokogiri::HTML(open(File.open("전공테이블.html")))
    
    @prof = proftable.css("table#mjLctTmtblDscTbl tbody tr")
    @prof.each do |f|
    
    Prof.create(
        div: f.css("td")[3].text,
        title: f.css("td.ta_l a").text,
        grades: f.css("td")[7].text,
        proffesion: f.css("td")[8].text,
        time: f.css("td")[9].text.split("(")[0],     
        classroom: f.css("td")[9].text.remove(")").split("(")[1], 
        grade: f.css("td")[2].text,
        subject: f.css("td")[1].text,
        validation: f.css("td")[0].text
    )
    end
end
