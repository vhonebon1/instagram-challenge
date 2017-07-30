require 'rails_helper'

RSpec.feature "Comments", type: :feature do
  scenario "a user can comment on a post" do
    sign_up
    create_post
    create_comment
    expect(page).to have_content("I am a comment")
  end

  scenario "a comment is created in the database" do
    sign_up
    create_post
    expect { create_comment }.to change(Comment, :count).by(1)
  end

  scenario "posts can have multiple comments" do
    sign_up
    create_post
    create_comment
    create_second_comment
    expect(page).to have_content("I am a comment")
    expect(page).to have_content("I am a second comment")
  end

  scenario "comments are displayed in reverse chronological order" do
    sign_up
    create_post
    create_comment
    create_second_comment
    expect("I am a comment").to appear_before("I am a second comment")
  end
end
