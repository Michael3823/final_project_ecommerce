class CheckoutController < ApplicationController
  def create
    @product = Product.find(params[:product_id])

    if @product.nil?
      redirect_to root_path
      nil
    end

    respond_to do |format|
      format.js 
    end
  end
    
      def success
        # We took the customer's money!
      end
    
      def cancel
        # Something went wrong with the payment :(
      end
    
end
