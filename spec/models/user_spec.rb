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
end
