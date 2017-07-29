class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes

  validates :link, presence: true,
                    length: { minimum: 1 }
end
