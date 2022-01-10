ActiveAdmin.register OrderProduct do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :quantity, :unit_price, :order_id, :product_id, :total
  #
  # or
  #
  # permit_params do
  #   permitted = [:quantity, :unit_price, :order_id, :product_id, :total]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
