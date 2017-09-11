class Player < ApplicationRecord

  has_many :transactions
  has_many :teams, through: :transactions

end
