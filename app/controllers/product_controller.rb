class ProductController < AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, :params => {:fields => "id,title", :limit => 250})    
  end
end