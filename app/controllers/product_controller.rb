class ProductController < AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all)    
  end
end
