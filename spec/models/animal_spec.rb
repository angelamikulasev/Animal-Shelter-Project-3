# == Schema Information
#
# Table name: animals
#
#  id             :integer          not null, primary key
#  adopter_id     :integer
#  adoptee_id     :integer
#  animal_id      :integer
#  name           :string(255)
#  about_me       :text
#  ideal_home     :string(255)
#  species        :string(255)
#  gender         :string(255)
#  child_friendly :string(255)
#  image          :text
#  created_at     :datetime
#  updated_at     :datetime
#  category_id    :integer
#

require 'rails_helper'

RSpec.describe Animal, :type => :model do 
  it { should belong_to(:adoptee) }
  it { should belong_to(:adopter) }
end
