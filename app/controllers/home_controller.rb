class HomeController < AuthenticatedController
  def index
  	@products = ShopifyAPI::Product.find(:all, :params => {:limit => 10},:fields => "name,created_at,total_price")
    #@products = ShopifyAPI::Product.find(:all, :params => {:title => "SA", :limit => 10})
    #@orders = ShopifyAPI::Order.find(:all, :params => {:financial_status => "pending", :limit => 10})
    #render json: @orders
  end
end
