class Prof < ActiveRecord::Base
    validates :validation, :uniqueness => true

    def self.search(attr, q)
        Prof.where("#{attr} like ?", "%#{q}%")
    end
end
