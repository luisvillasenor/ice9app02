ShopifyApp.configure do |config|
  config.api_key = "5106f4a21aa25bbfde5d9abb4ddc902f"
  config.secret = "be9ba61b8923cc912f011e2308ee2438"
  config.redirect_uri = "<redirect_uri>"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
end
