class User < ApplicationRecord
  has_many :posts

  validates_presence_of :name, :email, :password, :password_confirmation

  validates_confirmation_of :password
  validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates_uniqueness_of :email
end
