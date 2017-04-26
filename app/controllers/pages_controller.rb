class PagesController < ApplicationController

  before_action :authenticate_user!, :except => [:home]
  before_action :check_role, only: [:admin_dashboard]
  # before_action :set_current_user, :only [:profile]

  def home
  end

  def profile
    @person = current_user.persons
    @user_profile = Person.where(:relation => 'myself', :user_id => current_user.id)
  end

  def check_role
    if current_user.has_role? :admin
      puts "Welcome to Admin Dashboard"
    else
      redirect_to pages_profile_path(@person), alert: "Watch it, mister!"
    end
  end

  def admin_dashboard
    @people = Person.all
    # ransack
    @q = Person.ransack(params[:q])
    @people = @q.result
  end

  def person
  end

  def results
    @person = Person.missing_persons(current_user)
    @users = User.all
    @conversations = Conversation.all
  end

  def set_current_user
    @user = current_user
  end
end
