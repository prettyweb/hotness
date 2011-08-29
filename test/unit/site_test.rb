require 'test_helper'

class SiteTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

