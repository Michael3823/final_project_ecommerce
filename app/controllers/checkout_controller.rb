class CheckoutController < ApplicationController
  def create
     @session = Stripe::Checkout::Session.create({
  payment_method_types: ['card'],
  line_items: @cart.collect { |item| item.to_builder.attributes! },
  mode: 'payment',
  success_url: checkout_success_url + "?session_id={CHECKOUT_SESSION_ID}",
  cancel_url: root_url,
})
redirect_to @session.url.to_s
end
    
      def success
        @session = Stripe::Checkout::Session.retrieve(params[:session_id])
        @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
      end
    
      def cancel
        # Something went wrong with the payment :(
      end
    
end
# @session = Stripe::Checkout::Session.create({
#   payment_method_types: ['card'],
#   line_items: @cart.collect { |item| item.to_builder.attributes! },
#   mode: 'payment',
#   success_url: checkout_success_url + "?session_id={CHECKOUT_SESSION_ID}",
#   cancel_url: root_url,
# })
# redirect_to @session.url.to_s
# end