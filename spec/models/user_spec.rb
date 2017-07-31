require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to be }
  describe User.new(name: "Jim", email: "test@gmail.com", password: "test", password_confirmation: "test") do
    it { is_expected.to have_attributes(name: "Jim",
                                        email: "test@gmail.com",
                                        password: "test",
                                        password_confirmation: "test") }
  end
end
