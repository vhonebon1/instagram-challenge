require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them" do
    visit "/posts"
    click_link "New post"
    fill_in "post_link", with: "https://s-media-cache-ak0.pinimg.com/originals/a5/d5/2b/a5d52bf7a10b6468e2d72fa2829c6dfe.jpg"
    click_button "Submit"
    expect(page).to have_content("https://s-media-cache-ak0.pinimg.com/originals/a5/d5/2b/a5d52bf7a10b6468e2d72fa2829c6dfe.jpg")
  end
end
