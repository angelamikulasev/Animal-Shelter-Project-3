# == Schema Information
#
# Table name: animals
#
#  id             :integer          not null, primary key
#  adopter_id     :integer
#  adoptee_id     :integer
#  name           :string(255)
#  about_me       :text
#  ideal_home     :string(255)
#  species        :string(255)
#  gender         :string(255)
#  child_friendly :boolean
#  image          :text
#  created_at     :datetime
#  updated_at     :datetime
#

class Animal < ActiveRecord::Base
  belongs_to :category

  belongs_to :adoptee, class_name: "User" # , primary_key: "adoptee_id"
  belongs_to :adopter, class_name: "User" # , primary_key: "adopter_id"

  validates :name, presence: true
  validates :about_me, presence: true
  validates :ideal_home, presence: true

  SPECIES = %w[Dog Cat]
  validates :species, inclusion: { in: SPECIES }

  GENDER = %w[Male Female]
  validates :gender, inclusion: { in: GENDER }

  validates :child_friendly, inclusion: { in: [true, false] }

  def adopt! adopter
    update adopter_id: adopter.id
  end

  def adopted?
    return !adopter_id.nil?
  end
end
