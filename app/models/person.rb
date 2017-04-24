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
end
