class HomeController < AuthenticatedController
  def index
  	#@orders = ShopifyAPI::Order.find(:all, :params => {:fields => "name,created_at", :limit => 10})
    #@products = ShopifyAPI::Product.find(:all, :params => {:title => "SA", :limit => 10})
    @orders = ShopifyAPI::Order.find(:all, :params => {:financial_status => "pending", :limit => 10})
    #render json: @orders
  end
end
