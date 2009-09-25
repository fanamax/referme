class Request < ActiveRecord::Base
  belongs_to :user
  belongs_to :business
  validates_presence_of :askprice
  validates_presence_of :description
  validates_numericality_of :askprice
  
  def self.search(businessid)
    find(:all, :conditions => ['business_id = ', businessid])
  end
end
