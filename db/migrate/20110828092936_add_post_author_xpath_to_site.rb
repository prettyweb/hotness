class AddPostAuthorXpathToSite < ActiveRecord::Migration
  def self.up
    add_column :sites, :post_author_xpath, :string
  end

  def self.down
    remove_column :sites, :post_author_xpath
  end
end
