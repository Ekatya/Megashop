class Category < ActiveRecord::Base
	has_many :products
	validates_numericality_of :position
end
