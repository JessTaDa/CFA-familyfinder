class RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
    people_newuserprofile_path :person, :relation, :default => 'myself'
  end

  def after_sign_in_path_for(resource)
    pages_profile_path
  end
end
