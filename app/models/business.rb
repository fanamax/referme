class Business < ActiveRecord::Base
	validates_presence_of :name
	validates_presence_of :description
	has_many :contactrecords
	has_many :referrals
	has_many :users, :through => :referrals

	def self.search(businessname)
		search_condition = "%" + businessname + "%"
		find(:all, :conditions => ['name LIKE ? AND approved = ?', search_condition, "yes"])
	end
end
