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
