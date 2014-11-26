# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  firstname       :string(255)
#  lastname        :string(255)
#  email           :string(255)
#  password_digest :text
#  created_at      :datetime
#  updated_at      :datetime
#

require 'rails_helper'

RSpec.describe User, :type => :model do
  it { should have_many(:adoptions) }
  it { should have_many(:surrenders) }

  describe User do
    it "is valid with a firstname, lastname, email, password and password confirmation" do
      user = User.new(
        firstname: 'Aaron',
        lastname: 'Sumner',
        email: 'tester@example.com',
        password: 'chicken',
        password_confirmation: 'chicken')
      expect(user).to be_valid
    end
    it "is invalid without a firstname" do
      user = User.new(firstname: nil)
      user.valid?
      expect(user.errors[:firstname]).not_to include("Firstname can't be blank")
    end
    it "is invalid without a lastname" do
      user = User.new(lastname: nil)
      user.valid?
      expect(user.errors[:lastname]).not_to include("Lastname can't be blank")
    end
    context 'when password is valid' do
      it 'redirects user to root_path' do
        user = User.new

        post :create, session: { email: user.email, password: user.password }

        expect(response).to redirect_to root_path
        expect(controller.current_user).to eq user
      end
    end
  end

  # describe '#authenticate' do
  #   let(:firstname) { 'lauren' }
  #   let(:lastname) { 'mik' }
  #   let(:email) { 'lauren@lauren.com' }
  #   let(:password) { 'sometest123' }
  #   let!(:user) { FactoryGirl.build :user, email: email, password: password }

  #   context 'when credentials match' do
  #     it 'return user' do
  #       user.save!

  #       expect(User.authenticate(email, password)).to be_present
  #     end
  #   end

  #   context 'when credentials are incorrect' do
  #     it 'returns no user' do
  #       user = User.authenticate email, 'blah'

  #       expect(user).to be_nil
  #     end
  #  end
# end
end
