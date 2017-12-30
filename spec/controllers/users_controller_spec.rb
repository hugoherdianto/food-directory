# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe '#new' do
    it 'does it successfully' do
      user = User.create(name: 'Nama', email: 'Email', password: 'Password')
      get :new, params: { id: user.id }
      expect(response).to have_http_status :ok
    end
  end

  describe '#create' do
    it 'does it successfully' do
      user_params = { name: 'Nama', email: 'Email', password: 'Password' }
      post :create, params: { user: user_params }
      expect(User.where(name: 'Nama', email: 'Email').length).to be 1
      expect(response).to redirect_to foods_path
    end
  end
end
