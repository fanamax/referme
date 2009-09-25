class AddPictureAssociationToBusiness < ActiveRecord::Migration
  def self.up
    remove_column :businesses, :picture
    add_column :businesses, :picture, :reference
  end

  def self.down
    remove_column :businesses, :picture, :reference    
    add_column :businesses, :picture
  end
end
