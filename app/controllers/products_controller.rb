class ProductsController < ApplicationController

	def index
    if params[:sort].present?
      column = params[:sort].split('_').first
      order = params[:sort].split('_').last.upcase
    else
      column = 'price'
      order = 'ASC'
    end


		@products = if params[:category].present?
                  Product.where(category_id: params[:category]).order("#{column} #{order}").paginate(:page => params[:page], :per_page => 16)
                elsif params[:search].present?
                  Product.where("name LIKE ? OR description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%").order("#{column} #{order}").paginate(:page => params[:page], :per_page => 16)


elsif (params[:price_min].present? and params[:price_max].present?)
                  Product.where("price >= ? AND price <= ?", "#{params[:price_min]}", "#{params[:price_max]}").paginate(:page => params[:page], :per_page => 16)



                else
                  Product.order("#{column} #{order}").paginate(:page => params[:page], :per_page => 16)
                end

@max_price = Product.all.map { |p| p.price }.max
end
                
  



  def show
    @product = Product.find(params[:id])
  end
end
