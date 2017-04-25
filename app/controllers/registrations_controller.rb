class RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
    people_newuserprofile_path :person, :relation, :default => 'myself'
  end

  def after_sign_in_path_for(resource)
    if current_user.has_role :admin?
      pages_admin_dashboard_path
    else
      pages_profile_path
    end
  end
end
