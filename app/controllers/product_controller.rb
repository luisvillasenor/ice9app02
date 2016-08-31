class ProductController < AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, :params => {:fields => "id,title,created_at", :limit => 250})    
  end
end
