require 'spec_helper'

describe Post do
  subject { FactoryGirl.build(:post) }

  describe '#body' do
    it 'returns the body' do

      expect(subject.body).to_not be_empty
    end
  end
end
