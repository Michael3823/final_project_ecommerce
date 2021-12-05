class CartController < ApplicationController

    def create
        logger.debug("adding #{params[:id]} to cart.")
        id = params[:id].to_i
        session[:shopping_cart] << id 
        product = Product.find(id)
        flash[:notice] = "➕ #{product.name} added to cart!"
        redirect_back(fallback_location: root_path) 
    end

    def destroy
        id = params[:id].to_i
        session[:shopping_cart].delete(id)
        product = Product.find(id)
        flash[:notice] = "➖ #{product.name} removed from cart!"
        redirect_back(fallback_location: root_path) 
    end
end
