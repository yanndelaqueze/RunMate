class ReviewPolicy < ApplicationPolicy
  def new?
    record.attendance.user == user
  end

  def create?
    record.attendance.user == user
  end
end
