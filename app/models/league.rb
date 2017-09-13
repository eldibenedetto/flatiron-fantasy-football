class League < ApplicationRecord

  belongs_to :owner, class_name: "User"
  has_one :draft
  has_many :teams
  has_many :transactions, through: :teams
  has_many :players, through: :transactions

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :owner_id, presence: true
  #
  # Select players.id from players where players.id not in (
  # select transactions.player_id
  # from leagues
  # join teams on leagues.id = teams.league_id
  # join transactions on teams.id = transactions.team_id
  # where teams.league_id = #{self.id})

end
