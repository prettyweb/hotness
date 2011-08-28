class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
      t.string :name
      t.integer :site_id
      t.datetime :last_check_time
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :topics
  end
end
