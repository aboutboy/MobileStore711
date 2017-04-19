class Api::ProductStoresController < ApiController
  def get_products_from_store
    #@product_stores = ProductStore.joins(:product).where(products: {category_id: params[:category_id]}).where(store_id: params[:store_id])
    @product_stores = ProductStore.where(store_id: params[:store_id])

    render json: @product_stores.as_json(ProductStore::Json::LIST)
  end
end
