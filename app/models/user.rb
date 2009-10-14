class User < ActiveRecord::Base
	has_many :contactrecord
	has_many :referrals
	has_many :businesses, :through => :referrals

  acts_as_authentic
  
  def self.find_by_username_or_email(login)
    find_by_username(login) || find_by_email(login)
  end
end
