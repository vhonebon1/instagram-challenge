require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "A new person can sign up for Instagram" do
    expect { sign_up }.to change(User, :count).by(1)
  end

end
