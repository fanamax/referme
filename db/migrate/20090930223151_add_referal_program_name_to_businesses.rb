class AddReferalProgramNameToBusinesses < ActiveRecord::Migration
  def self.up
    add_column :businesses,:referal_program_name,:string
  end

  def self.down
    remove_column :businesses,:referal_program_name,:string
  end
end
