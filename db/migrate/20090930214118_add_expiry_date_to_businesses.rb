class AddExpiryDateToBusinesses < ActiveRecord::Migration
  def self.up
    add_column :businesses,:expiry_date,:date
  end

  def self.down
    remove_column :businesses,:expiry_date,:date
  end
end
