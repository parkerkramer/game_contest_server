class Contest < ActiveRecord::Base
  belongs_to :referee
  belongs_to :user
  has_many :matches
  has_many :players
end
