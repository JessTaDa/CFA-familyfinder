require 'rails_helper'

RSpec.describe Person, type: :model do

  it "can't find missing mother" do
    # me = User.create
    # my_profile = Person.create(:relation => "self", :name => "Jessica", :town => "Melbourne")
    # # my_mum = Person.create(:relation => "mother", :name => "Anna", :town => "Melbourne")
    #
    # # mum = User.create
    # # mum_profile = Person.create(:relation => "self", :name => "Anna", :town => "Melbourne")
    #
    # # some_other_mum = User.create
    # # some_other_mum_profile = Person.create(:relation => "self", :name => "Dorris", :town => "Melbourne")
    #
    # results = my_profile.search_for_missing_person(my_mum)
    #
    # expect(results).to_not be_valid
    me = User.create(:email => 'one@one.com', :password => '123456')
    me_person = Person.create(:relation => 'Self', :name => 'Adam', :town => 'Sydney', :user => me)
    mother = Person.create(:relation => 'Mother', :name => 'mummy', :town => 'Sydney', :user => me)
#require 'pry'; binding.pry
    results = mother.search_for_missing_person
    expect(results).to be_empty
  end

    it "found missing father" do
      me = User.create(:email => 'one@one.com', :password => '123456')
      me_person = Person.create(:relation => 'Self', :name => 'Adam', :town => 'Sydney', :user => me)
      father = Person.create(:relation => 'father', :name => 'daddy', :town => 'Sydney', :user => me)

      me2 = User.create(:email => 'me2@me2.com', :password => '123456')
      me_person2 = Person.create(:relation => 'Self', :name => 'daddy', :town => 'Sydney', :user => me2)

      results = father.search_for_missing_person
      expect(results).to contain_exactly(me_person2)
      # require 'pry'; binding.pry
    end



end
