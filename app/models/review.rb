class Review < ApplicationRecord
  belongs_to :attendance
  has_one :user, through: :attendance
  has_one :run, through: :attendance
  validates :rating, presence: true
  validates :comment, presence: true, length: { minimum: 3 }
end
