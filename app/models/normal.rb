<<<<<<< HEAD
class Normal < ActiveRecord::Base
    validates :validation, :uniqueness => true
    
    # 클래스 메소드 `search` 정의 
    # def self.search(div)
    #   Normal.where("div like ?", "%#{div}%")
    # end
    # def self.search(title)
    #   Normal.where("title like ?", "%#{title}%")
    # end
    # def self.search(grades)
    #   Normal.where("grades like ?", "%#{grades}%")
    # end
    # def self.search(prof)
    #   Normal.where("prof like ?", "%#{prof}%")
    # end
    # def self.search(time)
    #   Normal.where("time like ?", "%#{time}%")
    # end
    # def self.search(classroom)
    #   Normal.where("classroom like ?", "%#{classroom}%")
    # end
    
    def self.search(col_name, q)
      Normal.where("#{col_name} like ?", "%#{q}%")
=======

class Normal < ActiveRecord::Base
    validates :validation, :uniqueness => true

    def self.search( q )
      Normal.where("title like ?", "%#{q}%")
>>>>>>> 91b95c44d39b429fd08e5253d148009335604b9e
    end

end
