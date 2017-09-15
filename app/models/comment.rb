class Comment < ActiveRecord::Base

  belongs_to :league
  belongs_to :user

  validates :content, presence: true
  validates :content, length: {maximum: 150}

end
