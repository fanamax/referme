class User < ActiveRecord::Base
	has_many :contactrecord
	has_many :referals
	has_many :businesses, :through => :referals
	validates_uniqueness_of :displayname
	validates_uniqueness_of :email
	validates_length_of :password, :within => 6..40
	validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
	validates_presence_of :displayname
	validates_presence_of :email
	validates_presence_of :password
	
	def self.authenticate(username, password)
		users = find(:all, :conditions => ['displayname = ? and password = ?', username, password])
		if users.count > 0
			return users[0].id
		else
			return -1
		end
	end
end
