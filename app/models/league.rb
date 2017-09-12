class League < ApplicationRecord

  belongs_to :owner, class_name: "User"
  has_one :draft
  has_many :teams
  has_many :transactions, through: :teams
  has_many :players, through: :transactions

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :owner_id, presence: true

end
