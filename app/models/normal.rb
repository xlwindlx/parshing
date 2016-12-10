require 'nokogiri'
require 'open-uri'

class Normal < ActiveRecord::Base
    validates :validation, :uniqueness => true
    if Normal.count.zero?
      normaltable = Nokogiri::HTML(open(File.open("교양테이블.html")))

      @normal = normaltable.css("table#culLctTmtblDscTbl tbody tr")
      @normal.each do |t|
        Normal.create(
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

    def self.search( q )
      Normal.where("title like ?", "%#{q}%")
    end

end
