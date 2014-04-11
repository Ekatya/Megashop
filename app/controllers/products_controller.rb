class ProductsController < ApplicationController

	def index
	 if params[:sort].present?
      column = params[:sort].split('_').first
      order = params[:sort].split('_').last.upcase
    else
      column = 'name'
      order = 'ASC'
    end
		@products=Product.paginate(:page => params[:page], :per_page => 10)
    end

	def show
		@product=Product.find(params[:id])
	end
end
