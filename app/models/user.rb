class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :attendances
  has_many :notifications
  has_many :runs
  has_many :attendances, through: :runs
  has_many :reviews, through: :attendances
  has_one_attached :photo

  def unread_notifications
    notifications.where(read: false).where.not(attendance: [nil, ""])
  end
end
