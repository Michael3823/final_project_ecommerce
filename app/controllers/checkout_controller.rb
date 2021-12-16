class CheckoutController < ApplicationController
  def create
     @total = 0
     cart.each do |add|
      @total += add.price
     end
     @realTotal = @total / 100
  end
    
      def success
        @currentCustomer = current_customer.id
        @total = 0
        cart.each do |add|
          @total += add.price
        end
        @realTotal = @total / 100
        #create an order and grab the id, also link to the loged in user id (also taxes here)
        # loop through the session
        # create orderProducts that link to the new order id and the product id
        o = Order.create(total: (@realTotal * 1.13), tax: 1.13,
                         subtotal: @realTotal,
                         customer_id: @currentCustomer )
                         
        cart.each do |product|
          o.order_products.create(
            quantity: 1,
            unit_price: product.price,
            total: product.price,
            product_id: product.id

          )
        end


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