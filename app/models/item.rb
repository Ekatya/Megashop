class Item < ActiveRecord::Base
	belongs_to :product
	belongs_to :cart
	belongs_to :order

	validates_presence_of :product_id, :cart_id, :quantity, :price

end
