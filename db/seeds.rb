if Normal.count.zero?
  normaltable = Nokogiri::HTML(open(File.open("교양테이블.html")))
  
  @normals = normaltable.css("table#culLctTmtblDscTbl tbody tr")
  @normals.each do |t|
  weekdays =  t.css("td")[7].text.split("/")
  time, classroom = [], []
  
  weekdays.each do | weekday |
    time << weekday.scan(/(.*)(?:\(.*\))/).flatten.join(", ").lstrip
    classroom_tmp = weekday.scan(/.*\((.*)\)/)
    classroom << (classroom_tmp.nil? ? "" : classroom_tmp.join(", "))
  end
  time = time.reject{|x|x == ""}.join("\n")
  classroom = classroom.join("\n")
    Normal.create(
      div: t.css("td")[1].text,
      title: t.css("td.ta_l a").text.remove("(타학년 제한없음 2차때 수강가능)").remove("(타학년 제한없음, 2차때 신청가능)"),
      grades: t.css("td")[5].text,
      prof: t.css("td")[6].text,
      day: time.split("\n").map{|day|day[0]}.join("\n"),
      time: time,
      classroom: classroom,
      validation: t.css("td")[0].text
    )
  end
end

if Prof.count.zero?
    proftable = Nokogiri::HTML(open(File.open("전공테이블.html")))
    
    @profs = proftable.css("table#mjLctTmtblDscTbl tbody tr")
    @profs.each do |f|
      weekdays =  f.css("td")[9].text.split("/")
      time, classroom = [], []
      
      weekdays.each do | weekday |
        time << weekday.scan(/(.*)(?:\(.*\))/).flatten.join(", ").lstrip
        classroom_tmp = weekday.scan(/.*\((.*)\)/)
        classroom << (classroom_tmp.nil? ? "" : classroom_tmp.join(", "))
      end
      time = time.reject{|x|x == ""}.join("\n")
      classroom = classroom.join("\n")
      Prof.create(
          div: f.css("td")[3].text,
          title: f.css("td.ta_l a").text,
          grades: f.css("td")[7].text,
          proffesion: f.css("td")[8].text,
          day: time.split("\n").map{|day|day[0]}.join("\n"),
          time: time, 
          classroom: classroom, 
          grade: f.css("td")[2].text,
          subject: f.css("td")[1].text,
          validation: f.css("td")[0].text
      )
    end
end