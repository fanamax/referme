class RenameReferalsToReferrals < ActiveRecord::Migration
  def self.up
    rename_table :referals, :referrals
  end

  def self.down
    rename_table :referrals, :referals
  end
end
