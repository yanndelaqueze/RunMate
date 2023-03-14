class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :attendance, optional: true
  belongs_to :message, optional: true
end
