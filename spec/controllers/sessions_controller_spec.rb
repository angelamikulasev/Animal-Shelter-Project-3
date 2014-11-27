require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do
  describe 'Login' do
    before do
      User.create! :firstname => 'Annie', :lastname => 'mik', :email => "annie@annie.com", :password => "chicken", :password_confirmation => "chicken" 
    end

    describe 'let user login if details are valid' do
      before do
        post :create, {email: "annie@annie.com", password: "chicken"}
      end 

      it 'should redirect to root_path if valid' do  
        expect(response).to redirect_to root_path
      end

      describe 'let the user log out' do
        before do
          get :destroy
        end
        it 'should redirect to the root path' do
          expect(response).to redirect_to root_path
        end
      end
    end
    describe 'if a user enters wrong information' do 
      before do 
        post :create, {email: "annie@annie.com", password: "chickens"}
      end

      it 'should redirect to new_session_path when password is incorrect' do
        expect(response).to redirect_to new_session_path
      end
    end 
  end 
end