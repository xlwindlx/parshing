require 'nokogiri'
require 'open-uri'

class Prof < ActiveRecord::Base
    validates :validation, :uniqueness => true

end
