# frozen_string_literal: true

class User < ApplicationRecord
  validates :username, presence: true, length: { maximum: 30 }

  validates :email, presence: true, length: { maximum: 50 }, format: { with: URI::MailTo::EMAIL_REGEXP }

  validates :password, length: { minimum: 8 }, presence: true
end
