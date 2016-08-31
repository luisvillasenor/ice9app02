class Product < ActiveResource::Base
	var mishop = ShopifyAPI::Shop.current
	var urlshop = mishop.domain
	self.site = "https://" + urlshop + ":3000/"
end
