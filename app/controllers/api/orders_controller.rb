class Api::OrdersController < ApiController
  def get_user_orders
    orders = Order.where(user_id: params[:user_id])
    if orders
      render json: orders.as_json
    else
      render json: {message: 'No orders available.'}
    end
  end

  def show
    order = Order.find_by(id: params[:id])
    if order
      render json:{success: true, order: order.as_json()}
    else
      render json: {success: false}
    end
  end

  def create
    order = Order.new(order_params)
    if order.save
      render json: {success: true, message: 'Order successfully placed.'}
    else
      render json: {success: false, message: 'Error when placing order.'}, status: 422
    end
  end

  protected

  def order_params
    params.permit(:payment_method,:user_id,:total_cost,:store_id,:pickup_date)
  end
end
