def create_comment(comment: "I am a comment")
  click_link "Comment"
  fill_in(:comment_comment, with: comment)
  click_button "Submit"
end

def create_second_comment(comment: "I am a second comment")
  click_link "Comment"
  fill_in(:comment_comment, with: comment)
  click_button "Submit"
end
