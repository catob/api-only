require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_one(:progress) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
end
