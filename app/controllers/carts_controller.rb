class CartsController < ApplicationController
  def index
    @total_price = 0
    current_cart.items.each { |item| @total_price += item.quantity*item.price }
  end
end
