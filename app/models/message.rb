class Message < ApplicationRecord
  belongs_to :run
  belongs_to :attendance
  has_one :user, through: :attendance
  has_many :notifications
end
