class RemoveXpathFromTopic < ActiveRecord::Migration
  def self.up
    remove_column :topics, :xpath
  end

  def self.down
    add_column :topics, :xpath, :string
  end
end
