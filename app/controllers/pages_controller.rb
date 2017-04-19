class PagesController < ApplicationController

  before_action :authenticate_user!, :except => [:home]
  # before_action :set_current_user, :only [:profile]

  def home
  end

  def profile
    # @user.email
  end

  def person
  end


  def set_current_user
    @user = current_user
  end
end
