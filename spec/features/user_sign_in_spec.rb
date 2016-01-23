require "spec_helper"
require "rails_helper"


describe "user sign in" do
  it "allows users to sign in after they have registered" do
    user = User.create(:email    => "alindeman@example.com",
                       :password => "ilovegrapes")

    visit "/users/sign_in"

    fill_in "Email",    :with => "alindeman@example.com"
    fill_in "Password", :with => "ilovegrapes"

    click_button "Log in"
    expect(page).to have_content 'Signed in successfully.'
    #page.should have_content("Signed in successfully.")
  end
end
