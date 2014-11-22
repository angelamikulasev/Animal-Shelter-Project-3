require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  describe 'GET to index' do
    describe 'as HTML' do
      before do 
       get :new
      end

      it 'should respond with a status 200' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it 'should render new template' do
        expect(response).to render_template('new')
      end
    end
  end

  describe 'POST to create' do
    describe 'a user with valid information' do
      before do
        post :create, { :user => { :firstname => 'Annie', :lastname => 'mik', :email => 'annie@annie.com', :password => 'annie', :password_confirmation => 'annie' } }
      end

      it 'should create a user' do
        expect(User.count).to eq(1)
      end

      it 'should redirect to root_path if successfully signed up' do
        expect(response).to redirect_to(root_path)
      end
    end

    describe 'a user with invalid information' do
      before do
        post :create, { :user => { :firstname => 'Annie', :lastname => 'mik', :email => 'annie@annie.com', :password => 'annie', :password_confirmation => 'angela' } }
      end

      it 'should create a user with invalid details' do
        expect(User.count).to eq(0)
      end

      it 'should render :new if not sign up not successful' do 
        expect(response).to render_template("new")
      end
    end
  end
end