class RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
    # person1 = Person.create(:name =>'a', :age=>10 ,:town=>'hello' ,:story=> 'story', :relation => 'Myself')
    # new_person_path  :person, :relation, :default => 'Myself'
    people_newuserprofile_path :person, :relation, :default => 'Myself'

  end

  def after_sign_in_path_for(resource)
    pages_profile_path
  end





end

#
# self.relation ||= Role.find_by_name('registered')
