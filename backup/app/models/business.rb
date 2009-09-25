class Business < ActiveRecord::Base
	has_many :requests
	has_many :referals
	def self.search(businessname, city)
		search_condition = "%" + businessname + "%"
		find(:all, :conditions => ['name LIKE ?', search_condition])
	end
end
