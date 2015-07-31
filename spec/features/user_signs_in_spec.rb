require 'spec_helper'

feature 'user can sign in to morning routine' do
  specify 'user' do
    user = create(:user)

    visit new_session_path

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password

    click_button "Sign in"
    expect(page).to have_content("Welcome to morning routine!")
  end
end
