class ProductController < AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, :params => {:fields => "id,title,collection_id", :limit => 250})    
  end
end
