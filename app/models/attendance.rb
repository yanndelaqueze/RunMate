class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :run
  has_many :reviews
  enum status: [:pending, :confirmed, :declined]
end

# WE CAN USE THESE:
# run = Run.first
# run.attendances.confirmed

# run.attendances.first.pending?
# run.attendances.first.confirmed!
