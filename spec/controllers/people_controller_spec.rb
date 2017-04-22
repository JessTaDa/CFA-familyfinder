require 'rails_helper'

RSpec.describe PeopleController, type: :controller do

  describe "GET #person" do
   it "can't view people unless signed in" do
     user = build(:user)#, :role => "child")
     controller.sign_in user
     get :index
     expect(response).to_not have_http_status(:success)
   end
 end

end
