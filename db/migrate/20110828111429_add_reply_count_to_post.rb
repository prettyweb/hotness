class AddReplyCountToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :reply_count, :integer
  end

  def self.down
    remove_column :posts, :reply_count
  end
end
