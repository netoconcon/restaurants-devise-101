class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all #=> Restaurant.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    # só o dono do restaurante possa editar
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
