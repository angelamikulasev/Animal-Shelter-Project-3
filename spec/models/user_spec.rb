require 'rails_helper'

RSpec.describe User, :type => :model do
  it { should have_many(:adoptions) }
  it { is_expected.to have_many(:adoptees, class_name: "Animal", foreign_key: "adoptee_id") }
  it { is_expected.to have_many(:adopters, class_name: "Animal", foreign_key: "adopter_id") }
end

  # has_many :adoptions
  # has_many :adoptees, class_name: "Animal", foreign_key: "adoptee_id"
  # has_many :adopters, class_name: "Animal", foreign_key: "adopter_id"
