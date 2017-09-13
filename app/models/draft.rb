class Draft < ApplicationRecord

  belongs_to :league

  validates :draft_time, presence: true
  validates :league_id, presence: true

end
