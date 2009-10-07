class Business < ActiveRecord::Base
	validates_presence_of :name
	validates_presence_of :referal_program_name
	validates_presence_of :description
	validates_presence_of :referee_reward
	validates_presence_of :category
	has_many :contactrecords
	has_many :referals
	has_many :users, :through => :referals

	def self.search(businessname)
		search_condition = "%" + businessname + "%"
		find(:all, :conditions => ['name LIKE ?', search_condition])
	end
end
