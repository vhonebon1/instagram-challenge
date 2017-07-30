require 'rails_helper'

RSpec.feature "Likes", type: :feature do
  scenario "users can like a post" do
    sign_up
    create_post
    like_post
    expect(page).to have_content("Likes: 1")
  end

  scenario "a single post can have multiple likes" do
    sign_up
    create_post
    like_post
    like_post
    expect(page).to have_content("Likes: 2")
  end

  scenario "a like is recorded in the database" do
    sign_up
    create_post
    expect { like_post }.to change(Like, :count).by(1)
  end
end
