class Match < ActiveRecord::Base
  belongs_to :manager, polymorphic: true
  has_many :player_matches
  has_many :players, through: :player_matches
  belongs_to :referee
  belongs_to :contest
end
