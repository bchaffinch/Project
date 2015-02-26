# == Schema Information
#
# Table name: user_ratings
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  score      :integer
#  game_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class UserRatingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
