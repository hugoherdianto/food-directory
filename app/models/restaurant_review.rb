# == Schema Information
#
# Table name: restaurant_reviews
#
#  id         :integer          not null, primary key
#  rating     :integer
#  review     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RestaurantReview < ApplicationRecord
  belongs_to :user
end
