class HomeController < AuthenticatedController
  
  def index
    @pufipad = ShopifyAPI::Shop.current
  end

  def pending
  	@orders = ShopifyAPI::Order.find(:all, :params => {:fields => "id,name,created_at,email,financial_status,total_price", :financial_status => "pending", :limit => 250})
  end

  def settings
    
  end

end