class Api::StoresController < ApiController

  def index
    @stores = Store.all

    if @stores
      render json: {success: true, stores: @stores.as_json}
    else
      render json: {success: false}
    end
  end

  def show
    @store = Store.find(params[:id])

    if @store
      render json: {success: true, store: @store.as_json}
    else
      render json: {success: false}
    end
  end
end