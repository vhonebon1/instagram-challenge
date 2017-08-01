require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET /new " do
    it "responds with 200" do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /" do
    it "responds with 200" do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
    it "successfully redirects after sign up" do
      manual_user_creation
      post :create, params: { post: { caption: "This is a dog" } }
      expect(response).to redirect_to(@user)
    end

    it "creates a post in the database" do
      manual_user_creation
      post :create, params: { post: { caption: "This is another dog" } }
      expect(Post.find_by(caption: "This is another dog")).to be
    end
  end

end
