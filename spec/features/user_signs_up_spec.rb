require 'spec_helper'

describe 'account creation' do
  specify 'user signs up for an account' do
    visit root_path
    click_link "Sign up"

    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "P@ssW0rD"
    fill_in "user_first_name", with: "Test"
    fill_in "user_last_name", with: "User"
    fill_in "user_age", with: 22

    click_button "Sign Up"
    expect(page).to have_content "Welcome to morning routine!"
  end
end
