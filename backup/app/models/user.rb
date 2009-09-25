class User < ActiveRecord::Base
	validates_uniqueness_of :displayname, :on => :create
	validates_length_of :password, :within => 5..40, :on => :create
	
	def self.authenticate(username, password)
		users = find(:all, :conditions => ['displayname = ? and password = ?', username, password])
		if users.count > 0
			return users[0].id
		else
			return -1
		end
	end
	
	def login
	end
	
	def logout
	end
	
	def processlogin
		
	end
end
