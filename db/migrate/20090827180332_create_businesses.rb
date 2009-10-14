class CreateBusinesses < ActiveRecord::Migration
  def self.up
    create_table :businesses do |t|
      t.string  :name
      t.string  :address
      t.string  :city
      t.string  :state
      t.string  :country
      t.string  :zipcode
      t.string  :url
      t.string  :category
      t.string  :approved
      t.date    :start_date
      t.date    :expiry_date
      t.integer :upper_limit
      t.string  :referee_constraint
      t.string  :referral_program_name
      t.text    :description
      t.string  :referrer_reward
      t.string  :referee_reward

      t.timestamps
    end
  end

  def self.down
    drop_table :businesses
  end
end
