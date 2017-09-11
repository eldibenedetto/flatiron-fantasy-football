class Draft < ApplicationRecord

  belongs_to :league
  has_many :transactions

end
