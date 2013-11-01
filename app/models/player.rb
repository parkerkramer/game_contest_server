class Player < ActiveRecord::Base
  belongs_to :manager, polymorphic: true
  has_many :player_matches
  has_many :matches, through: :player_matches
  belongs_to :user
  belongs_to :contest
end
