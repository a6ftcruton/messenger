class User < ActiveRecord::Base
  has_secure_password
  has_many :messages

  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { in: 3..18 }
end
