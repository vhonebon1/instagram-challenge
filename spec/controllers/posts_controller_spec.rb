require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  require "spec_helper"
  include Capybara::DSL
  describe "GET /new " do
    it "responds with 200" do
      sign_up
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
    it "responds with 200" do
      sign_up
      session[:user_id] = 1
      @user = User.find(session[:user_id])
      post :create, params: { post: { link: "http://cdn2-www.dogtime.com/assets/uploads/2011/03/cute-dog-names.jpg" } }
      expect(response).to redirect_to(@user)
    end

    it "creates a post" do
      sign_up
      session[:user_id] = 1
      @user = User.find(session[:user_id])
      post :create, params: { post: { link: "https://iheartdogs.com/wp-content/uploads/2015/01/Screenshot-2015-01-17-16.15.29.png" } }
      expect(Post.find_by(link: "https://iheartdogs.com/wp-content/uploads/2015/01/Screenshot-2015-01-17-16.15.29.png")).to be
    end
  end

  describe "GET /" do
    it "responds with 200" do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
