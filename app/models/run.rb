class Run < ApplicationRecord
  CATEGORIES = ["Casual", "Coaching", "City Tour", "Hiking", "Jogging", "Running", "Trail Running"]
  belongs_to :user
  has_many :attendances, dependent: :destroy
  has_many :reviews
  has_many :messages

  validates :category, inclusion: { in: CATEGORIES }

  after_create :create_first_attendee

  private

  def create_first_attendee
    Attendance.create(user_id: self.user_id, run_id: self.id, status: 'confirmed')
  end
end
