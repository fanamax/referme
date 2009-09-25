class CreateRequests < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
      t.datetime :publishtime
      t.text :description
      t.integer :askprice
      t.references :user
      t.references :business

      t.timestamps
    end
  end

  def self.down
    drop_table :requests
  end
end
