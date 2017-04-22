class Person < ApplicationRecord
  belongs_to :user
  scope :missing_persons, ->(user) { where(user:user, missing: true)}

# search method here
# install rspec
# academic channel - instructions to install rspec
# create first test, a mode test for the person model
# test that calls search function and returns some result
#
#end

def search_for_missing_person
  []
  Person.where(:name => name, :town => town).where.not(:id => id)#after_create
  # @person_query = Person.where(:relation => 'Mother', :name => name, :town => town)
  # if @person_query.exists?
  #   @person_query.each do |profile|
  #     puts profile.name
  #     puts profile.town
  #   end
  # else
  #   puts 'no match'
  # end
end


def search_for_missing_father(person)
  @person_query = Person.where(:relation => 'Father', :name => person.name, :town => person.town)
  if @person_query.exists?
    @person_query.each do |profile|
      puts profile.name
      puts profile.town
      end
  else
    puts 'no match'
  end
#    person_search = mum_profile
end
def search_for_missing_sister(person)
  @person_query = Person.where(:relation => 'Sister', :name => person.name, :town => person.town)
  if @person_query.exists?
    @person_query.each do |profile|
      puts profile.name
      puts profile.town
      end
  else
    puts 'no match'
  end
#    person_search = mum_profile
end

def search_for_missing_brother(person)
  @person_query = Person.where(:relation => 'Brother', :name => person.name, :town => person.town)
  if @person_query.exists?
    @person_query.each do |profile|
      puts profile.name
      puts profile.town
      end
  else
    puts 'no match'
  end
#    person_search = mum_profile
end

end
