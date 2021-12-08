class CheckoutController < ApplicationController
  def create
    product = Product.find(params[:id])
    @session = Stripe::Checkout::Session.create({
      payment_method_types: ['card'],
      line_items: [{
        name: product.name,
        amount: 9999,
        currency: "cad",
        quantity: 1
      }],
      mode: 'payment',
      success_url: root_url,
      cancel_url: root_url,
    })
    redirect_to @session.url.to_s
  end
    
      def success
        # We took the customer's money!
      end
    
      def cancel
        # Something went wrong with the payment :(
      end
    
end
