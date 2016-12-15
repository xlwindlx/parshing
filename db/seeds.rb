<<<<<<< HEAD
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
      time: t.css("td")[7].text.split("(")[0],
      classroom: t.css("td")[7].text.remove(")").split("(")[1],
      validation: t.css("td")[0].text
    )
  end
end

if Prof.count.zero?
    proftable = Nokogiri::HTML(open(File.open("전공테이블.html")))
    
    @prof = proftable.css("table#mjLctTmtblDscTbl tbody tr")
    @prof.each do |f|
    
    prof = Prof.create(
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
=======
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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
        time: t.css("td")[7].text.split("(")[0],
        classroom: t.css("td")[7].text.remove(")").split("(")[1],
        validation: t.css("td")[0].text
    )
    puts normal.title
  end
end
>>>>>>> 91b95c44d39b429fd08e5253d148009335604b9e
