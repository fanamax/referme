class Business < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :address
  validates_presence_of :description
  has_many :requests
  has_many :referals

  def self.search(businessname, city)
    search_condition = "%" + businessname + "%"
    find(:all, :conditions => ['name LIKE ?', search_condition])
  end
end
