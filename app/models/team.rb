class Team < ApplicationRecord

  belongs_to :user
  belongs_to :league
  has_many :transactions
  has_many :players, through: :transactions

  validates :name, presence: true
  validates :name, length: {maximum: 100}


end
