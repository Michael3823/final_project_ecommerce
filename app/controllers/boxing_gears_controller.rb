class BoxingGearsController < ApplicationController
  def index
    @categories = Category.where(name: 'Gear').paginate(page: params[:page], per_page: 9)

  end
end
