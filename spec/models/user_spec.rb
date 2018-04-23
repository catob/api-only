require 'rails_helper'

RSpec.describe User, type: :model do
  # let!(:user) { FactoryBot.create(:user, name: 'catooo', email: 'cato@email.com') }
  # let!(:progress) { FactoryBot.create(:progress, :progress_percent: 10, level: 1) }

  it { should have_one(:progress) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }

end
