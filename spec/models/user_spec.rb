require 'spec_helper'

describe User do

  subject { FactoryGirl.build(:user) }

  describe '#username' do
    it 'returns the username' do

      expect(subject.username).to_not be_empty
    end
  end

  describe '#followers' do
    it 'returns those who are following the user' do
      bob = FactoryGirl.build(:user)

      subject.followers << bob

      expect(subject.followers).to include(bob)
    end
  end

  describe '#followed_users' do
    it 'returns those who are being followed by the user' do
      bob = FactoryGirl.build(:user)

      subject.followed_users << bob

      expect(subject.followed_users).to include(bob)
    end
  end

  describe '#followed_posts' do
    it 'returns posts of followed users' do
      bob = FactoryGirl.build(:user)
      post = FactoryGirl.build(:post)

      bob.posts << post
      subject.followed_users << bob

      expect(subject.followed_posts).to include(post)
    end

    it 'does not return posts of non followed users' do
      bob = FactoryGirl.build(:user)
      post = FactoryGirl.build(:post)

      bob.posts << post

      expect(subject.followed_posts).to_not include(post)
    end
  end
end
