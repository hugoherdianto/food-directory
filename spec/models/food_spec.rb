require 'rails_helper'

RSpec.describe Food, type: :model do
  it "saves given a valid Food" do
    food = Food.new(name: 'Makanan')
    expect(food.save).to be true
  end
end
