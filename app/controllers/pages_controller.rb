class PagesController < ApplicationController

  before_action :authenticate_user!, :except => [:home]
  # before_action :set_current_user, :only [:profile]

  def home
  end

  def profile
    @person = current_user.persons
    # @people = Person.where(:user_id => current_user.id)
    @user_profile = Person.where(:relation => 'Myself', :user_id => current_user.id)

    # ransack
    @q = Person.ransack(params[:q])
    @people = @q.result#.includes(:relation).people(params[:person])
  end

  def person

  end

  def results
    @person = Person.missing_persons(current_user)
  end


  def set_current_user
    @user = current_user
  end
end
