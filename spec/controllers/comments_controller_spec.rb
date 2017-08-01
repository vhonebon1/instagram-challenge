require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe "GET /index " do
    it "responds with 200" do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /new " do
    it "responds with 200" do
      get :new
      expect(response).to have_http_status(200)
    end

    it "creates a comment in the database" do
      manual_user_post_creation
      Comment.create(comment: "Nice dog", post_id: (session[:post_id]))
      expect(Comment.find_by(comment: "Nice dog")).to be
    end
  end
  end
