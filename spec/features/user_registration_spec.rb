require "spec_helper"
require "rails_helper"

describe "user registration" do
  it "allows new users to register with an email address and password" do
    visit "users/sign_up/"

    fill_in "Email",                 :with => "alindeman@example.com"
    fill_in("Password", with: '123456aa', :match => :prefer_exact)
    fill_in("Password confirmation", with: '123456aa', :match => :prefer_exact)

    click_button "Sign up"

    expect(page).to have_content 'Welcome! You have signed up successfully.'

    #page.should have_content("Welcome! You have signed up successfully.")
  end
end
