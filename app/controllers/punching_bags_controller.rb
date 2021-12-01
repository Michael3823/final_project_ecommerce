class PunchingBagsController < ApplicationController
  def index
    @categories = Category.where(name: 'Punching Bags').paginate(page: params[:page], per_page: 9)

  end
end
