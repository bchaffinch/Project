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

class UserRating < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
end
