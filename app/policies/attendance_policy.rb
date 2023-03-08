class AttendancePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def new?
    create?
  end

  def create?
    true
  end

  def confirm?
    true
  end

  def decline?
    true
  end

  def destroy?
    record.user == user
  end
end
