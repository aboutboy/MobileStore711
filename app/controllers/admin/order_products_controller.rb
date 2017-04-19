class Admin::OrderProductsController < AdminController
  before_action :load_order

  def index
    @order_products = @order.order_products
  end

  def show
    @order_product = @order.order_products.find(params[:id])
  end

  def create
    #@order_product = @order.order_products.build(order_products_params)
    #if @order_product.save

    #else

    #end
  end

  def new
    #@order_product = OrderProduct.new
  end

  def edit
    #@order_product = @order.order_products.find(params[:id])
  end

  def update
  end

  def destroy
    @order_product = @order.order_products.find(params[:id])
    if @order_product.destroy
      redirect_to admin_order_order_products_path
    else
      redirect_to admin_order_order_products_path
    end
  end

  protected

  def load_order
    @order = Order.find(params[:order_id])
  end
  def order_products_params
    params.require(:order_product).permit(:product_id,:amount)
  end
end
