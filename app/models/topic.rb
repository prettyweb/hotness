class Topic < ActiveRecord::Base
  belongs_to :site
  has_many :posts
  
  def updatePosts
    url = self.url
    require 'open-uri'
    doc = Nokogiri::HTML(open(url))
    
    base = url.sub(/\/[^\/]+$/, '/')
    
    doc.xpath(self.site.post_xpath).each do |link|
      href = link['href']
      if !href.match(/^https?:\/\//)
        href = "#{base}#{href}"
      end
      post = Post.find_or_create_by_url(href)
      post.topic = self
      post.save
      post.retrieveUpdates
      post.save
    end
  end

end

# == Schema Information
#
# Table name: topics
#
#  id              :integer         not null, primary key
#  name            :string(255)
#  site_id         :integer
#  last_check_time :datetime
#  url             :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

