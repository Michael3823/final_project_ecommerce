class ApplicationController < ActionController::Base
    before_action :initialize_session
    helper_method :cart
    include ApplicationHelper
    
    def initialize_session
        session[:shopping_cart] ||= []
    end

    def cart
        Product.find(session[:shopping_cart])
    end
end
