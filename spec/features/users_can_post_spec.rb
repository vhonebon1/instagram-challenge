require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Users can submit posts and view them" do
    sign_up
    create_post
    expect(page).to have_content("This is a dog")
  end

  scenario "posts are in reverse chronological order" do
    sign_up
    create_post
    create_second_post
    expect('This is a cat').to appear_before('This is a dog')
  end

  scenario "posts are timestamped" do
    sign_up
    Timecop.freeze(Time.parse("2017-07-29 14:56:46.490151 +0100"))
    create_post
    expect(page).to have_content('2017-07-29 13:56:46 UTC')
    Timecop.return
  end
end
