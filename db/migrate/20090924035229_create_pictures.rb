class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.string :filename
      t.string :filetype
      t.binary :content

      t.timestamps
    end
  end

  def self.down
    drop_table :pictures
  end
end
