require 'rails_helper'

RSpec.describe User, type: :model do
  it "user is valid" do
    user = build(:user)
    expect(user).to be_valid
  end

  it "can't create user without password" do
    user = build(:user, :password => nil)
    expect(user).to_not be_valid
  # require 'pry'; ; binding.pry
  end

end
