class AddDetailsToBusinesses < ActiveRecord::Migration
  def self.up
    add_column :businesses,:start_date,:date
    add_column :businesses,:upper_limit,:integer
    add_column :businesses,:referee_constraint,:string
  end

  def self.down
    remove_column :businesses,:start_date,:date
    remove_column :businesses,:upper_limit,:integer
    remove_column :businesses,:referee_constraint,:string    
  end
end
