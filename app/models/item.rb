class Item < ActiveRecord::Base
	belongs_to :product
	belongs_to :cart

	validates_presence_of :product_id, :cart_id, :quantity, :price

end
