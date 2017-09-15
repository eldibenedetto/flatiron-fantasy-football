class Draft < ApplicationRecord

  belongs_to :league

  validates :draft_time, presence: true
  validates :league_id, presence: true
  # validate :valid_time?

  def draft_order(league)
    league.team_ids.shuffle
  end

  def start_time
      self.draft_time
  end

  def valid_time?
    unless self.draft_time > Time.now.localtime
      errors.add(:draft_time, "can't be in the past")
    end
  end

  def time_yet?
    self.draft_time < Time.now
  end

end
