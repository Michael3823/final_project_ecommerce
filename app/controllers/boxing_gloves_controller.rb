class BoxingGlovesController < ApplicationController
  def index
    @categories = Category.where(name: 'Gloves').paginate(page: params[:page], per_page: 9)
  end
end
