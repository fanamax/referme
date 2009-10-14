class CreateContactRecords < ActiveRecord::Migration
  def self.up
      create_table :contact_records do |t|
      t.integer :business_id
      t.integer :user_id
      t.string  :name
      t.string  :email
      t.string  :phone
  
      t.timestamps
    end
  end

  def self.down
    drop_table :contact_records
  end
end
