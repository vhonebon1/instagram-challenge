require 'rails_helper'

RSpec.feature "Comments", type: :feature do
  scenario "Can comment on posts" do
    sign_up
    create_post
    expect(page).to have_content("Comment")
  end
end
