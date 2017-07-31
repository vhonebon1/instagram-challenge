require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET /show " do
    it "responds with 302" do
      get :show
      expect(response).to have_http_status(302)
    end
    it "adds user to database" do
      expect { User.create(name: "test",
        email: "test@test.com",
        password: "Test123",
        password_confirmation: "Test123") }.to change { User.count }.by(1)
    end
  end
end
