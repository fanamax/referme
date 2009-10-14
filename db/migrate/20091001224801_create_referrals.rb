class CreateReferrals < ActiveRecord::Migration
  def self.up
      create_table :referrals do |t|
        t.integer :user_id
        t.integer :business_id
        t.text    :comment
  
        t.timestamps
    end
  end

  def self.down
    drop_table :referrals
  end
end
