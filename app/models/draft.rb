class Draft < ApplicationRecord

  belongs_to :league
  has_many :transactions

  validates :draft_time, presence: true
  validates :league_id, presence: true

end
