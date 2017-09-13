class Draft < ApplicationRecord

  belongs_to :league

  validates :draft_time, presence: true
  validates :league_id, presence: true


  def draft_order(league)
    league.team_ids.shuffle
  end

  def start_time
      self.draft_time
  end
end
