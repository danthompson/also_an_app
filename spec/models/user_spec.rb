require 'spec_helper'

describe User do
  describe '#username' do
    it 'returns the username' do
      user = FactoryGirl.build(:user)

      expect(user.username).to_not be_empty
    end
  end

  describe '#followers' do
    it 'returns those who are following the user' do
      alice = FactoryGirl.build(:user)
      bob = FactoryGirl.build(:user)

      alice.followers << bob

      expect(alice.followers).to include(bob)
    end
  end

  describe '#followed_users' do
    it 'returns those who are being followed by the user' do
      alice = FactoryGirl.build(:user)
      bob = FactoryGirl.build(:user)

      alice.followed_users << bob

      expect(alice.followed_users).to include(bob)
    end
  end
end
