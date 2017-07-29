def create_post
  click_link "New post"
  fill_in "post_link", with: "https://s-media-cache-ak0.pinimg.com/originals/a5/d5/2b/a5d52bf7a10b6468e2d72fa2829c6dfe.jpg"
  click_button "Submit"
end

def create_second_post
  click_link "New post"
  fill_in "post_link", with: "http://www.cutestpaw.com/wp-content/uploads/2011/11/It-was-me...-I-let-the-dogs-out.jpg"
  click_button "Submit"
end
