require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them" do
    create_post
    expect(page).to have_content("https://s-media-cache-ak0.pinimg.com/originals/a5/d5/2b/a5d52bf7a10b6468e2d72fa2829c6dfe.jpg")
  end

  scenario "posts are in reverse chronological order" do
    create_post
    create_second_post
    expect('http://www.cutestpaw.com/wp-content/uploads/2011/11/It-was-me...-I-let-the-dogs-out.jpg').to appear_before('https://s-media-cache-ak0.pinimg.com/originals/a5/d5/2b/a5d52bf7a10b6468e2d72fa2829c6dfe.jpg')
  end

  scenario "posts are timestamped" do
    Timecop.freeze(Time.parse("2017-07-29 14:56:46.490151 +0100"))
    create_post
    expect(page).to have_content('2017-07-29 13:56:46 UTC')
    Timecop.return
  end
end
