require 'spec_helper'

describe User do
  describe '#username' do
    it 'returns the username' do
      user = FactoryGirl.build(:user)

      expect(user.username).to_not be_empty
    end
  end
end
