class HomeController < AuthenticatedController
  
  def index
    @pufipad = ShopifyAPI::Shop.current
  end

  def settings
    
  end

  def pending
  	@orders = ShopifyAPI::Order.find(:all, :params => {:fields => "id,name,created_at,email,financial_status,total_price", :financial_status => "pending", :limit => 250})
  end

  def show
  	@orders = ShopifyAPI::Order.find(:all, :params => {:fields => "id,name,created_at,email,financial_status,total_price", :name => params[:name], :limit => 1 })
  	render action: 'index'
  end

  def resumen
    @order = ShopifyAPI::Order.find(:all, :params => {:name => params[:name], :limit => 1 })
  end

end