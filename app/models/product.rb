class Product < ActiveResource::Base
	mishop = ShopifyAPI::Shop.current
	urlshop = mishop.domain
	self.site = "https://" + urlshop + ":3000/"
end
