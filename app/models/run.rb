class Run < ApplicationRecord
  belongs_to :user
  has_many :attendances
  has_many :reviews
  has_many :messages

  after_create :create_first_attendee

  private

  def create_first_attendee
    Attendance.create(user_id: self.user_id, run_id: self.id, status: 'confirmed')
  end
end
