#generates random email and password
FactoryGirl.define do
 factory :user do
   email Faker::Internet.email
   #if you want your own string put:
   #email email@email.com, but this is not recommended
   password Faker::Internet.password
 end
 end
 
