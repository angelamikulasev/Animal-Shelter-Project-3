require 'rails_helper'

RSpec.describe Animal, :type => :model do 
  it { should belong_to(:adoptee) }
  it { should belong_to(:adopter) }
  it { should belong_to(:category) }
end