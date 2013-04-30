require 'spec_helper'

feature 'User browses the homepage' do

  before do
    ApplicationController.any_instance.stub(:current_user).and_return(subject)
  end

  subject { FactoryGirl.create(:user) }

  scenario 'welcomes the user' do
    visit root_url

    expect(page).to have_text("Welcome, #{subject.username}")
  end

  scenario 'lists the users they are following' do
    bob = FactoryGirl.create(:user)
    subject.followed_users << bob

    visit root_url

    expect(page).to have_text("following: #{bob.username}")
  end
end
