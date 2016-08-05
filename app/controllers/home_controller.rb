class HomeController < AuthenticatedController
  def index
  	@orders = ShopifyAPI::Order.find(:all, :params => {:fields => "id,name,created_at,email,financial_status,total_price", :limit => 250})
    #@products = ShopifyAPI::Product.find(:all, :params => {:title => "SA", :limit => 10})
    #@orders = ShopifyAPI::Order.find(:all, :params => {:financial_status => "pending", :limit => 10})
    #render json: @orders
  end

  def pending
 	@orders = ShopifyAPI::Order.find(:all, :params => {:fields => "id,name,created_at,email,financial_status,total_price", :financial_status => "pending", :limit => 250})
 	render action: 'index'
  end

  #def paid
  #	@orders = ShopifyAPI::Order.find(:all, :params => {:fields => "name,created_at,email,financial_status,total_price", :financial_status => "paid", :limit => 10})
  #end

  def show
  	@orders = ShopifyAPI::Order.find(:all, :params => {:fields => "id,name,created_at,email,financial_status,total_price", :name => params[:name], :limit => 250 })
  	#render json: @orders
  	if @orders.size == 0
  		flash[:notice] = "Lo siento, no se encontraron registros"
  		redirect_to(index_path)  		
  	end
  	render action: 'index'
  end

end
