class Team < ApplicationRecord

  belongs_to :user
  belongs_to :league
  has_many :transactions
  has_many :players, through: :transactions

end
