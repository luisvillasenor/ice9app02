class HomeController < AuthenticatedController
  
  def index
    @pufipad = ShopifyAPI::Shop.current
  end

  def settings
    
  end

end