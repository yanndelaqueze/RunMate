class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :attendance, optional: true
  belongs_to :message, optional: true

  scope :unread, -> { where(read: false) }
  scope :for_attendances, -> { where.not(attendance_id: nil) }
  scope :for_messages, -> { where.not(message_id: nil) }
end
