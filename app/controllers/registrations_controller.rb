class RegistrationsController < Devise::RegistrationsController


  def after_sign_up_path_for(resource)
    new_person_path
  end

  def after_sign_in_path_for(resource)
    pages_profile_path
  end


end
