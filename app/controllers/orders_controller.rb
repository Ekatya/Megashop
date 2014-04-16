class OrdersController < ApplicationController

def index 

end

def new
@order=Order.new
end

def create
 @order = Order.new(params.require(:order).permit(:user_name, :email, :adress))
 @order.cart_id=current_cart



 if @order.save
 current_cart.destroy
 cart = Cart.create
 session[:cart_id] = cart

redirect_to root_path
 else
render 'new'
 end

end

end
