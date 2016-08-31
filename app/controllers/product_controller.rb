class ProductController < AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, :params => {:limit => 250})    
  end
end
