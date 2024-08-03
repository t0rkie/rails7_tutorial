class User < ApplicationRecord
  # self.email = self.email.downcaseと等価 右式のselfは省略できる
  before_save { self.email = email.downcase }

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 50 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true

  # password_digestカラム追加後、bcryptで使用可能に
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
