class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :manage, :all if user.role == "admin"

    if user.role == "project_owner"
      can :read, :all
      can :manage, Project
      can :manage, TimesheetElement
    end

    if user.role == "worker"
      can :read, :all
      can :manage, TimesheetElement
    end
  end
end
