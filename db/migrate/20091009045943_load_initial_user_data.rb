class LoadInitialUserData < ActiveRecord::Migration
  def self.up
    
    # we start by deleting all data from user table
    down
    
    user = User.create(:displayname => "admin",
                :email => "refermewebmaster@gmail.com",
                :password => "123456",
                :role => "admin")
    
    user.save!
  end

  def self.down
    User.delete_all
  end
end
