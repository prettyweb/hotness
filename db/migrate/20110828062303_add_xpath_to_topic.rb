class AddXpathToTopic < ActiveRecord::Migration
  def self.up
    add_column :topics, :xpath, :string
  end

  def self.down
    remove_column :topics, :xpath
  end
end
