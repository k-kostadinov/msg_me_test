class User < ApplicationRecord
  has_many :msgs, dependent: :destroy

  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 3 , maximum:25}
  validates :password, presence: true, confirmation: true, unless: Proc.new { |a| a.password.blank? }

  has_secure_password

end
