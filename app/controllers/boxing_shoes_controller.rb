class BoxingShoesController < ApplicationController
  def index
    @products = Product.where(category_id: 4).paginate(page: params[:page], per_page: 9)

  end
end
