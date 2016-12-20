# require 'nokogiri'
# require 'open-uri'

if Normal.count.zero?
  normaltable = Nokogiri::HTML(open(File.open("교양테이블.html")))
  
  @normal = normaltable.css("table#culLctTmtblDscTbl tbody tr")
  @normal.each do |t|
    normal = Normal.create(
      div: t.css("td")[1].text,
      title: t.css("td.ta_l a").text.remove("(타학년 제한없음 2차때 수강가능)").remove("(타학년 제한없음, 2차때 신청가능)"),
      grades: t.css("td")[5].text,
      prof: t.css("td")[6].text,
      time: t.css("td")[7].text.split("(")[0].gsub("/","\n"),
      classroom: t.css("td")[7].text.scan(/.*\((.*)\)/).last,
      validation: t.css("td")[0].text
    )
  end
end

if Prof.count.zero?
    proftable = Nokogiri::HTML(open(File.open("전공테이블.html")))
    
    @prof = proftable.css("table#mjLctTmtblDscTbl tbody tr")
    @prof.each do |f|
      timeclassroom = f.css("td")[9].text.scan(/(.*)\((.*)\)/)
      time = timeclassroom.last[0].gsub("/","\n")
      classroom = timeclassroom.last[1]
      Prof.create(
          div: f.css("td")[3].text,
          title: f.css("td.ta_l a").text,
          grades: f.css("td")[7].text,
          proffesion: f.css("td")[8].text,
          time: time, 
          classroom: (classroom.nil? ? "" : classroom.join("")), 
          grade: f.css("td")[2].text,
          subject: f.css("td")[1].text,
          validation: f.css("td")[0].text
      )
    end
end