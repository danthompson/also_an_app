require 'spec_helper'

feature 'browsing the homepage' do
  specify 'welcomes the user' do
    user = FactoryGirl.create(:user)
    visit root_url

    expect(page).to have_text("Welcome, #{user.username}")
  end
end
