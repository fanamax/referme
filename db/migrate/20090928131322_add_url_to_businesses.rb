class AddUrlToBusinesses < ActiveRecord::Migration
  def self.up
    add_column :businesses, :url, :string
  end

  def self.down
    remove_column :businesses, :url
  end
end
