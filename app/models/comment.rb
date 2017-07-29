class Comment < ApplicationRecord
  belongs_to :post
  validates :comment, presence: true,
                    length: { minimum: 1 }
end
