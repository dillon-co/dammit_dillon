class OrdersController < ApplicationController

    def show
        @order = Order.find(params[:id])
        if current_user != @order.user
            redirect_to root_path
        end
    end
    
    def create
        @order = Order.new(order_params)
        @order.user = current_user
        @order.order_state = 0
        @order.save
        redirect_to @order
    end

    def new
        @order = current_user.orders.new
    end 
    
    def index
        @orders = current_user.orders.all
    end
    
    private
    
    def order_params
        params.require(:order).permit(:shipping_info_id, :variant_id)
    end
end
