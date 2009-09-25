class CreateBusinesses < ActiveRecord::Migration
  def self.up
    create_table :businesses do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.binary :picture
      t.integer :rating
      t.text :review
      t.string :category
      t.text :description
      t.string :zipcode
      t.string :yelpid
      t.timestamps
    end
  end

  def self.down
    drop_table :businesses
  end
end
