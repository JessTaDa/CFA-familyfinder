require 'rails_helper'

RSpec.describe Person, type: :model do

  it "find missing mother" do
    me = User.create
    my_profile = Person.create(:relation => "self", :name => "Jessica", :town => "Melbourne")
    # my_mum = Person.create(:relation => "mother", :name => "Anna", :town => "Melbourne")

    # mum = User.create
    # mum_profile = Person.create(:relation => "self", :name => "Anna", :town => "Melbourne")

    # some_other_mum = User.create
    # some_other_mum_profile = Person.create(:relation => "self", :name => "Dorris", :town => "Melbourne")

    results = my_profile.search_for_missing_person(my_mum)

    expect(results).to_not be_valid
  end




end
