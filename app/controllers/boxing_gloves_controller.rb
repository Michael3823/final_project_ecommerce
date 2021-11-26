class BoxingGlovesController < ApplicationController
  def index
    @products = Product.all
  end
end
