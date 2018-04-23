require 'rails_helper'

RSpec.describe Progress, type: :model do
  it { should belong_to(:user) }
  it { should validate_presence_of(:progress_percent) }
  it { should validate_presence_of(:level) }
end
