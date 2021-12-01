class BoxingShoesController < ApplicationController
  def index
    @categories = Category.where(name: 'Shoes').paginate(page: params[:page], per_page: 9)

  end
end
