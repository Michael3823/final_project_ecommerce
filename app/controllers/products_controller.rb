class ProductsController < ApplicationController
  def index
    @products = Product.all.paginate(page: params[:page], per_page: 9)
    @order_products = current_order.order_products.new
  end

  def show
    @product = Product.find(params[:id])
    
  end
  def search
    @categories = Category.all
    wildcard_category = "%#{params[:cat]}%"
    wildcard_search = "%#{params[:keywords]}%"
    @products = Product.where("name LIKE ?", wildcard_search).paginate(page: params[:page], per_page: 9)
  end
end
