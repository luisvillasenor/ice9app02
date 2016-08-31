class OrdersController < AuthenticatedController
  
  def index
  	#@orders = ShopifyAPI::Order.find(:all)
  end

  def pending
  	@orders = ShopifyAPI::Order.find(:all, :params => {:fields => "id,name,created_at,email,financial_status,total_price", :financial_status => "pending", :limit => 250})
  end

  def show
  	@orders = ShopifyAPI::Order.find(:all, :params => {:fields => "id,name,created_at,email,financial_status,total_price", :name => params[:name], :limit => 1 })
  	render action: 'pending'
  end

  def resumen
    @order = ShopifyAPI::Order.find(:all, :params => {:name => params[:name], :limit => 1 })
  end

end