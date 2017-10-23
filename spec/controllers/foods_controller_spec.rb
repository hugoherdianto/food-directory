require 'rails_helper'

RSpec.describe FoodsController, type: :controller do
  describe '#index' do
    it 'does it successfully' do
      get :index
      expect(response).to have_http_status :ok
    end
  end

  describe '#show' do
    it 'does it successfully' do
      food = Food.create(name: 'Makanan')
      get :show, params: { id: food.id }
      expect(response).to have_http_status :ok
    end
  end

  describe '#create' do
    it 'does it successfully, with a food created' do
      food_params = { name: 'Makanan' }
      post :create, params: { food: food_params }
      expect(Food.where(food_params).length).to be 1
      expect(response).to redirect_to foods_path
    end
  end
end
