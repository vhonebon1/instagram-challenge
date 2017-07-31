def create_post
  click_link "New post"
  fill_in "post_caption", with: "This is a dog"
  click_button "Create Post"
end

def create_second_post
  click_link "New post"
  fill_in "post_caption", with: "This is a cat"
  click_button "Create Post"
end
