class CartsController < ApplicationController
  def index
    @total_price = 0
    current_cart.items.each { |item| @total_price += item.quantity*item.price }
  end
   def destroy
    current_cart.destroy
    cart = Cart.create
    session[:cart_id] = cart
    redirect_to root_path
   end
end
