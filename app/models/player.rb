class Player < ApplicationRecord

  has_many :transactions
  has_many :teams, through: :transactions

  def self.available?
    self.all.select do |player|
      player.available
    end
  end

end
