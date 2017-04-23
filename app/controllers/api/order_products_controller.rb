class Api::OrderProductsController < ApiController
  before_action :load_order

  def create
    order_products = params[:products]
    order_products.each do |order_product|
      @order.order_products.create(product_id: order_product[:product_id].to_i, amount: order_product[:amount].to_i)
      product_store = @order.store.product_stores.find_by(product_id: order_product[:product_id].to_i)
      product_store.decrement!('amount', order_product[:amount].to_i)

    end

    render json: {success: true}
  end

  def get_products_from_order
    order_product = OrderProduct.where(order_id: params[:order_id])
    render json: order_product.as_json(OrderProduct::Json::LIST)
  end

  def show
    order_product = OrderProduct.where(id: params[:id])
    render json: order_product.as_json(OrderProduct::Json::SHOW)
  end

  protected

  def load_order
    @order = Order.find(params[:order_id].to_i)
  end
end
