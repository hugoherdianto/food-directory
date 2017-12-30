# frozen_string_literal: true

# == Schema Information
#
# Table name: restaurants
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :string
#  start_hour :time
#  end_hour   :time
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Restaurant < ApplicationRecord
  has_many :restaurant_reviews 
end
