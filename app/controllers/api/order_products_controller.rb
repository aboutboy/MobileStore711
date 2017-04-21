class Api::OrderProductsController < ApiController
  before_action :load_order

  def create
    order_products = params[:products]
    order_products.each do |order_product|
      @order.order_products.create(product_id: order_product[:product_id], amount: order_product[:amount])
      product_store = @order.store.product_stores.find_by(product_id: order_product[:product_id])
      product_store.decrement!('amount', order_product[:amount])

    end

    render json: {message: 'Created.'}
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
    @order = Order.find(params[:order_id])
  end
end
