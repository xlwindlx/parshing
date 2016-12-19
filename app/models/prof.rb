class Prof < ActiveRecord::Base
    validates :validation, :uniqueness => true

end
