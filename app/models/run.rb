class Run < ApplicationRecord
  CATEGORIES = ["Casual", "Coaching", "City Tour", "Hiking", "Running", "Trail Running", "Urban Trail"]
  # LEVEL = [1, 2, 3, 4, 5]
  belongs_to :user
  has_many :attendances, dependent: :destroy
  has_many :users, through: :attendances
  has_many :reviews
  has_many :messages, dependent: :destroy
  has_many :notifications, through: :messages
  geocoded_by :meeting_point
  after_validation :geocode, if: :will_save_change_to_meeting_point?
  has_one_attached :photo

  validates :category, inclusion: { in: CATEGORIES }
  # validates :level, inclusion: { in: LEVEL }

  after_create :create_first_attendee

  include PgSearch::Model
  pg_search_scope :search_by_address, against: [:meeting_point], using: { trigram: { threshold: 0.2 } }

  def city
    Geocoder.search([latitude, longitude]).first.city
  end

  private

  def create_first_attendee
    Attendance.create(user_id: self.user_id, run_id: self.id, status: 'confirmed')
  end

end
