class ProductsController < ApplicationController
  def index
    @products = Product.all.paginate(page: params[:page], per_page: 10)
  end

  def show
    @product = Product.find(params[:id])
    
  end
  def search
    wildcard_search = "%#{params[:keywords]}%"
    @products = Product.where("name LIKE ?", wildcard_search).paginate(page: params[:page], per_page: 10)
  end
end
