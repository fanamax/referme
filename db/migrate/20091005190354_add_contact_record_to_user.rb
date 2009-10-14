class AddContactRecordToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :contact_record_id, :integer
  end

  def self.down
    remove_column :users, :contact_record_id
  end
end
