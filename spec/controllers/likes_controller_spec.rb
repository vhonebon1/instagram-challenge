require 'rails_helper'

RSpec.describe LikesController, type: :controller do
  require "spec_helper"
  include Capybara::DSL
  describe "GET /new " do
    it "responds with 200" do
      get :new
      expect(response).to have_http_status(200)
    end

    it "adds a like to the database" do
      sign_up
      expect{ Like.create(post_id: 1) }.to change{ Like.count }.by(1)
    end
  end
end
