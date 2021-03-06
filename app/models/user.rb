class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments

  has_secure_password

  validates_presence_of :email
  validates_uniqueness_of :email
end
