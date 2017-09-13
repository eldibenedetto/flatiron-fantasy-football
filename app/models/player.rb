class Player < ApplicationRecord

  has_many :transactions
  has_many :teams, through: :transactions

  def self.available?
    self.where("available = ?", true)
  end

end
