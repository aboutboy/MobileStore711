class Admin::ProductStoresController < AdminController

  before_action :load_store

  def index
    @product_stores = @store.product_stores
  end

  def create
    @product_store = ProductStore.find_or_create_by(store_id: params[:store_id], product_id: product_store_params[:product_id])
    if !@product_store.amount
      @product_store.amount = product_store_params[:amount].to_i
    else
      @product_store.amount = @product_store.amount + product_store_params[:amount].to_i
    end

    if @product_store.save
      redirect_to admin_store_product_stores_path
    else
      redirect_to admin_store_product_stores_path
    end
  end

  def new
    @product_store = ProductStore.new
  end

  def edit
    @product_store = @store.product_stores.find(params[:id])
  end

  def show
    @product_store = @store.product_stores.find(params[:id])
  end

  def update
    @product_store = @store.product_stores.find(params[:id])
    if @product_store.update_attribute(:amount,product_store_params[:amount])
      redirect_to admin_store_product_stores_path
    else
      redirect_to admin_store_product_stores_path
    end
  end

  def destroy
    @product_store = @store.product_stores.find(params[:id])
    if @product_store.destroy
      redirect_to admin_store_product_stores_path
    else
      redirect_to admin_store_product_stores_path
    end
  end

  protected

  def load_store
    @store = Store.find(params[:store_id])
  end

  def product_store_params
    params.require(:product_store).permit(:product_id, :amount)
  end
end
