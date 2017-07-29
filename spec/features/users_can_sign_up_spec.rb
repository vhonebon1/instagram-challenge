require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "A new person can sign up for Instagram" do
    expect { sign_up }.to change(User, :count).by(1)
  end

  scenario "Users page displays their name" do
    sign_up
    expect(page).to have_content("New person")
  end

  describe "Blank fields" do
    scenario "Name field cannot be blank" do
      expect { sign_up(name: nil) }.to_not change(User, :count)
    end

    scenario "Email field cannot be blank" do
      expect { sign_up(email: nil) }.to_not change(User, :count)
    end

    scenario "Password field cannot be blank" do
      expect { sign_up(password: nil) }.to_not change(User, :count)
    end

    scenario "Password confirmation field cannot be blank" do
      expect { sign_up(password_confirmation: nil) }.to_not change(User, :count)
    end

    scenario "Email must be correctly formatted" do
      expect { sign_up(email: "not a valid email") }.to_not change(User, :count)
    end

    describe "Duplicate details" do
      scenario "Email address must be unique" do
        sign_up
        visit("/posts")
        expect { sign_up }.to_not change(User, :count)
      end
    end
  end
end
