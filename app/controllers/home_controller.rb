class HomeController < AuthenticatedController
  def index
  	@orders = ShopifyAPI::Order.find(:all, :params => {:fields => "id,name,created_at,email,financial_status,total_price", :financial_status => "pending", :limit => 250})
    #@products = ShopifyAPI::Product.find(:all, :params => {:title => "SA", :limit => 10})
    #@orders = ShopifyAPI::Order.find(:all, :params => {:financial_status => "pending", :limit => 10})
    #render json: @orders
  end

  def show
  	@orders = ShopifyAPI::Order.find(:all, :params => {:fields => "id,name,created_at,email,financial_status,total_price", :name => params[:name], :limit => 1 })
  	#render json: @orders
  	render action: 'index'
  end

end
