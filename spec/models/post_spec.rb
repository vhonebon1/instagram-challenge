require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to be }
  describe Post.new(link: "Link to image") do
    it { is_expected.to have_attributes(:link => "Link to image") }
  end
end
