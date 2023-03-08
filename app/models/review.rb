class Review < ApplicationRecord
  belongs_to :attendance
  has_one :user, through: :attendance
  has_one :run, through: :attendance
end
