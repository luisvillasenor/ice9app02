class ProductController < AuthenticatedController
  def index
    @products = Product.find(:all)
  end
end
