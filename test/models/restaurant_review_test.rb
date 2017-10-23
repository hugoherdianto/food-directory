# frozen_string_literal: true

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

require 'test_helper'

class RestaurantReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
