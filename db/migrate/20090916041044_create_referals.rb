class CreateReferals < ActiveRecord::Migration
  def self.up
    create_table :referals do |t|
      t.datetime :publishtime
      t.text :description
      t.integer :offerprice
      t.references :user
      t.references :business

      t.timestamps
    end
  end

  def self.down
    drop_table :referals
  end
end
