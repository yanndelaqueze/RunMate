class Message < ApplicationRecord
  belongs_to :run
  belongs_to :attendance
  belongs_to :user, through: :attendances
end
