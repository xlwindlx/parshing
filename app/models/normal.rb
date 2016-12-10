
class Normal < ActiveRecord::Base
    validates :validation, :uniqueness => true

    def self.search( q )
      Normal.where("title like ?", "%#{q}%")
    end

end
