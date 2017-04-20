class Person < ApplicationRecord
  belongs_to :user

  scope :missing_persons, ->(user) { where(user:user, missing: true)}

# search method here
# install rspec
# academic channel - instructions to install rspec
# create first test, a mode test for the person model
# test that calls search function and returns some result



end
