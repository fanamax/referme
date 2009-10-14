class AddApprovedToBusiness < ActiveRecord::Migration
  def self.up
    add_column :businesses, :approved, :string
  end

  def self.down
    remove_column :businesses, :approved
  end
end
