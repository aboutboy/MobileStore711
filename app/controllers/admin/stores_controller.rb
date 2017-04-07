class Admin::StoresController < AdminController

  def index
    @stores = Store.all
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to admin_stores_path
    else
      redirect_to new_admin_store_path
    end
  end

  def new
    @store = Store.new
  end

  def edit
    @store = Store.find(params[:id])
  end

  def show
    @store = Store.find(params[:id]) # Returns only one object, where returns all. 'params' searches Primary Key
  end

  def update
    @store = Store.find(params[:id])
    if @store.update(store_params)
      redirect_to admin_stores_path
    else
      redirect_to edit_admin_store_path
    end
  end

  def destroy
    @store = Store.find(params[:id])
    if @store.destroy
      redirect_to admin_stores_path
    else
      redirect_to admin_stores_path
    end
  end

  protected

  def store_params
    params.require(:store).permit(:name,:address,:opening_hour,:closing_hour,:phone)
  end

end
