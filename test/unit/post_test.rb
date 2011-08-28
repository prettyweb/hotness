require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end



# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  author     :string(255)
#  topic_id   :integer
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#  title      :string(255)
#  body       :string(255)
#

