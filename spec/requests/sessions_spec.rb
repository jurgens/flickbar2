require 'spec_helper'

describe 'User Sessions' do
  let!(:user) { create :user }

  context "when credentials are correct" do
    specify "Sign in" do
      visit root_path
      click_link 'Sign in'
      login_as 'user@example.org', 'password'
      page.should have_content 'Successful login'
    end
  end

  context "when login and password are wrong" do
    specify "Sign in" do
      visit root_path
      click_link 'Sign in'
      login_as 'non-existing-user@example.org', 'invalid-password'
      page.should have_content 'Login failed'
    end
  end
end