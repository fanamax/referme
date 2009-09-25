class Referal < ActiveRecord::Base
  belongs_to :user
  belongs_to :business
  
  def self.search(businessid)
    find(:all, :conditions => ['business_id = ', businessid])
  end
  
end
