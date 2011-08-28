class Site < ActiveRecord::Base
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  validates_presence_of :domain, :on => :create, :message => "can't be blank"
  validates_presence_of :url, :on => :create, :message => "can't be blank"
  
end

# == Schema Information
#
# Table name: sites
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  domain     :string(255)
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

