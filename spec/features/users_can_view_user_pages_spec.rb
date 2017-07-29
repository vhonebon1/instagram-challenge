require 'rails_helper'

RSpec.feature "User Page", type: :feature do
  scenario "User can view other user pages" do
    sign_up
    visit "/users/1"
    expect(page).to have_content("1")
  end

  # scenario "when user id entered is higher the next user is created in the database" do
  #   sign_up
  #   visit "/users/3"
  #   expect(page).to have_content("1")
  # end
end
