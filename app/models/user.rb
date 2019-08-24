class User < ApplicationRecord
  has_secure_password
  has_many :recipes
  validates :username, presence: true, length: {in: 4..20}
end
