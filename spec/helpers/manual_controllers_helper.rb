def manual_user_post_creation
  User.create(name: "test", email: "test@test.com", password: "Test123", password_confirmation: "Test123")
  session[:user_id] = 1
  @user = User.find(session[:user_id])
  Post.create(caption: "This is another dog", user_id: (session[:user_id]))
  session[:post_id] = 1
  @post = Post.find(session[:post_id])
end

def manual_user_creation
  User.create(name: "test", email: "test@test.com", password: "Test123", password_confirmation: "Test123")
  session[:user_id] = 1
  @user = User.find(session[:user_id])
end
