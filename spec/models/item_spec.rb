require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'associating models' do
    it { should belong_to(:category) }
  end

  describe 'item validations' do
    it { should validate_presence_of(:category) }
  end
end