class AddPostReplyNumberXpathToSite < ActiveRecord::Migration
  def self.up
    add_column :sites, :post_reply_number_xpath, :string
  end

  def self.down
    remove_column :sites, :post_reply_number_xpath
  end
end
