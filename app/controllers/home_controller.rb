class HomeController < AuthenticatedController
  def index
  	@orders = ShopifyAPI::Order.find(:all, :params => {:fields => "id,name,created_at,email,financial_status,total_price", :limit => 10})
    #@products = ShopifyAPI::Product.find(:all, :params => {:title => "SA", :limit => 10})
    #@orders = ShopifyAPI::Order.find(:all, :params => {:financial_status => "pending", :limit => 10})
    #render json: @orders
  end

  def pending
 	@orders = ShopifyAPI::Order.find(:all, :params => {:fields => "id,name,created_at,email,financial_status,total_price", :financial_status => "pending", :limit => 10})
  end

  #def paid
  #	@orders = ShopifyAPI::Order.find(:all, :params => {:fields => "name,created_at,email,financial_status,total_price", :financial_status => "paid", :limit => 10})
  #end

  def show
  	@orders = ShopifyAPI::Order.find(:all, :params => {:fields => "id,name,created_at,email,financial_status,total_price", :id => params[:id] })
  	render json: @orders
  end

end
