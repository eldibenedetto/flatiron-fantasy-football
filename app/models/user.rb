class User < ApplicationRecord

  has_many :teams
  has_many :leagues, through: :teams
  has_many :drafts, through: :leagues
  has_many :owner_leagues, class_name: "League", foreign_key: :owner_id
  has_many :transactions, through: :teams
  has_many :players, through: :transactions
  has_many :commments

  validates :username, uniqueness: true
  validates :username, length: {maximum: 35}
  has_secure_password

end
