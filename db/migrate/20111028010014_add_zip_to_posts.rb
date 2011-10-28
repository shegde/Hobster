class AddZipToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :zip, :string
  end

  def self.down
    remove_column :posts, :zip
  end
end
