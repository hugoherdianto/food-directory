# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe '#create' do
    it 'does it successfully' do
      user_params = { name: 'Test', password: '1234' }
      User.create(user_params)
      post :create, params: user_params
      expect(session[:name]).to_not be_nil
    end
  end
end
