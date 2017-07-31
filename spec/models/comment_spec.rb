require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to be }
  describe Comment.new(comment: "Hi") do
    it { is_expected.to have_attributes(comment: "Hi") }
  end
end
