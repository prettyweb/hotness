class RemovePostPageNumberXpathFromSite < ActiveRecord::Migration
  def self.up
    remove_column :sites, :post_page_number_xpath
  end

  def self.down
    add_column :sites, :post_page_number_xpath, :string
  end
end
