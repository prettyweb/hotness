class Site < ActiveRecord::Base
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  validates_presence_of :domain, :on => :create, :message => "can't be blank"
  validates_presence_of :url, :on => :create, :message => "can't be blank"
  has_many :topics

  def scrape
    self.topics.each do |topic|
      topic.updatePosts
    end
  end
  
  # author = '//td[@class="postauthor"]/cite/a'
  # body = '//*[@class="t_msgfont"][1]'
  # post_xpath = '//table['id'][2]//tr//span['id'][1]/a'
end




# == Schema Information
#
# Table name: sites
#
#  id                      :integer         not null, primary key
#  name                    :string(255)
#  domain                  :string(255)
#  url                     :string(255)
#  created_at              :datetime
#  updated_at              :datetime
#  post_title_xpath        :string(255)
#  post_body_xpath         :string(255)
#  post_xpath              :string(255)
#  post_author_xpath       :string(255)
#  post_reply_number_xpath :string(255)
#

