# frozen_string_literal: true
# == Schema Information
#
# Table name: restaurant_reviews
#
#  id            :integer          not null, primary key
#  rating        :integer
#  review        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#  restaurant_id :integer
#

class RestaurantReview < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
end
