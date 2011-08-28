class AddPostXpathToSite < ActiveRecord::Migration
  def self.up
    add_column :sites, :post_xpath, :string
  end

  def self.down
    remove_column :sites, :post_xpath
  end
end
