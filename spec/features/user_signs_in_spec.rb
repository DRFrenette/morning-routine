require "spec_helper"

feature "user can sign in" do
  specify "user" do
    user = create(:user)

    visit "/"

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password

    click_on "Sign in"
    expect(page).to have_content("Welcome back, #{user.first_name}")
  end
end
