class PersonPolicy < ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def update?
    @record.user == @user
  end

  def destroy?
    @record.user == @user
  end

  def permitted_attributes
    [:user_id, :relation, :name, :age, :town, :story, :missing, :q, :avatar]
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
