require 'open-uri'

class Post < ActiveRecord::Base
  belongs_to :topic
  validates_uniqueness_of :url, :on => :create, :message => "must be unique"
  
  def retrieveUpdates
    url = self.url
    
    doc = Nokogiri::HTML(open(url))
    self.title = doc.xpath(self.topic.site.post_title_xpath).first.content
    self.body = doc.xpath(self.topic.site.post_body_xpath).first.content
    self.author = doc.xpath(self.topic.site.post_author_xpath).first.content
    
    self.reply_count = self.parse_reply_number(doc)
    self
  end
  
  def parse_reply_number(doc)
    number = 0
    reply_number = doc.xpath(self.topic.site.post_reply_number_xpath)
    puts reply_number.count()
    if reply_number.empty?
      number = doc.xpath(self.topic.site.post_body_xpath).count()
    else
      number = reply_number.first.content.match(/\d+/)[0].to_i
    end
    
    number   
  end
end



# == Schema Information
#
# Table name: posts
#
#  id          :integer         not null, primary key
#  author      :string(255)
#  topic_id    :integer
#  url         :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  title       :string(255)
#  body        :string(255)
#  reply_count :integer
#

