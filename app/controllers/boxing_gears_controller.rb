class BoxingGearsController < ApplicationController
  def index
    @products = Product.where(category_id: 2).paginate(page: params[:page], per_page: 9)

  end
end
