class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :run
  has_many :messages, dependent: :destroy
  has_one :review
end

# WE CAN USE THESE:
# run = Run.first
# run.attendances.confirmed

# run.attendances.first.pending?
# run.attendances.first.confirmed!
