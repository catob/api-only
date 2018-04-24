require 'rails_helper'

RSpec.describe 'Users API', type: :request do
  let!(:user) { FactoryBot.create(:user) }

  describe 'GET /users' do
    before { get '/users' }

    it 'returns users' do
      expect(response.status).to eq 200
      expect(response.body).to match user.name
    end
  end
end
