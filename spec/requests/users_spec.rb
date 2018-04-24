require 'rails_helper'

RSpec.describe 'User API', type: :request do
  let!(:user) { FactoryBot.create(:user) }

  describe 'GET /api/v1/users' do
    before { get '/api/v1/users' }

    it 'returns users' do
      expect(response.status).to eq 200
      expect(response.body).to match user.name
    end
  end

  describe 'GET /api/v1/users/:id' do
    before { get "/api/v1/users/#{user.id}" }

    it 'returns user with correct id' do
      expect(response.status).to eq 200
      expect(response.body).to match user.name
    end
  end
end
