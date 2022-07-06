class User < ApplicationRecord
  validates :username, presence: true, length: 5..15, uniqueness: true
  validates :email, presence: true, uniqueness: true,
    format: {with: URI::MailTo::EMAIL_REGEXP, message: "Please provide a valid email"}
  
  has_secure_password
end
