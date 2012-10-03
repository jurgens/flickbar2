require 'spec_helper'

describe 'User Sessions', :js => true do
  let(:user) { create :user }

  context "when credentials are correct" do
    before { user }
    specify "Sign in" do
      login_as 'user@example.org', 'password'
      page.should have_content 'Sign out'
    end
  end

  context "when login and password are wrong" do
    specify "Sign in" do
      login_as 'non-existing-user@example.org', 'invalid-password'
      page.should have_content 'Sign in'
    end
  end
end