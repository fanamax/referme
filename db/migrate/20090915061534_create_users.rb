class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :displayname
      t.string :email
      t.integer :ratingcount
      t.integer :averagerating
      t.binary :picture

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
