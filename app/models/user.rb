class User < ActiveRecord::Base
  has_secure_password
  
  has_many :referees
  has_many :contests
  has_many :players
  
  validates :username, :presence => true, uniqueness: true, :length => { :maximum => 20}
  
  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
end
