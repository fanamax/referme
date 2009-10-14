class AddUrlAndAmountToBusinesses < ActiveRecord::Migration
  def self.up
    add_column :businesses,:url,:string
    add_column :businesses,:referer_reward,:integer
    add_column :businesses,:referee_reward,:integer
  end

  def self.down
    remove_column :businesses,:url,:string
    remove_column :businesses,:referer_reward,:integer
    remove_column :businesses,:referee_reward,:integer    
  end
end
