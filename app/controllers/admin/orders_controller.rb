class Admin::OrdersController < AdminController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def destroy
    @order = Order.find(params[:id])
    if @order.destroy
      redirect_to admin_orders_path
    else
      redirect_to admin_orders_path
    end
  end

  protected

  def order_params
    params.require(:order).permit(:payment_method,:user_id,:total_cost,:store_id, :pickup_date)
  end
end
