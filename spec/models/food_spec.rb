# frozen_string_literal: true

# == Schema Information
#
# Table name: foods
#
#  id         :integer          not null, primary key
#  name       :string
#  string     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Food, type: :model do
  it 'saves given a valid Food' do
    food = Food.new(name: 'Makanan')
    expect(food.save).to be true
  end
end
