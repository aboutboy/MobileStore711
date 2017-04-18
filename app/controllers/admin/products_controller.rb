class Admin::ProductsController < AdminController
  def index
    @products = Product.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_products_path
    else
      redirect_to admin_products_path
    end
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def show
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to admin_products_path
    else
      redirect_to edit_admin_product_path
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to admin_products_path
    else
      redirect_to admin_products_path
    end
  end

  protected

  def product_params
    params.require(:product).permit(:name,:price)
  end
end
