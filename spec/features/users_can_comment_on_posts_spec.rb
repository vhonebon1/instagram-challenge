require 'rails_helper'

RSpec.feature "Comments", type: :feature do
  scenario "Can comment on a post" do
    sign_up
    create_post
    create_comment
    expect(page).to have_content("I am a comment")
  end

  scenario "Creates a comment in the database" do
    sign_up
    create_post
    expect { create_comment }.to change(Comment, :count).by(1)
  end

  scenario "are entered in reverse chronological order" do
    sign_up
    create_post
    create_comment
    create_second_comment
    expect("I am a comment").to appear_before("I am a second comment")
  end
end
