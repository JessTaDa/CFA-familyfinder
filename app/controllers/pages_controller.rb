class PagesController < ApplicationController

  before_action :authenticate_user!, :except => [:home]
  # before_action :set_current_user, :only [:profile]

  def home
  end

  def profile
    @person = current_user.persons
    # @people = Person.where(:user_id => current_user.id)
    @user_profile = Person.where(:relation => 'Self', :user_id => current_user.id)


  end

  def person
  end


  def set_current_user
    @user = current_user
  end
end
