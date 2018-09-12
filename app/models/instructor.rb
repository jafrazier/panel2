class Instructor < ApplicationRecord
  before_save { self.email = email.downcase }
  has_secure_password
  validates :password, presence: true, length: {maximum: 32, minimum: 2}
  validates :email, presence: true, length: { maximum: 100 }

  # def User.digest(string)
  #   cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MID_COST :
  #                                                 BCrypt::Engine.cost
  #   BCrypt::Password.create(string, cost: cost)
  # end
  # def authenticated?(attribute, token)
  #   digest = send("#{attribute}_digest")
  #   return false if digest.nil?
  #   BCrypt::Password.new(digest).is_password?(token)
  # end
end
