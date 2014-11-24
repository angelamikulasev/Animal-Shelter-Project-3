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

class User < ActiveRecord::Base
  #has_many :adoptions, class_name: "Animal"

  has_many :adoptions, class_name: "Animal", :foreign_key => 'adopter_id'
  has_many :surrenders, class_name: "Animal", :foreign_key => 'adoptee_id'

  # validates :email, :uniqueness => true
  validates :email, confirmation: true
  validates :firstname, :lastname, :email, :password, :presence => true
  validates_length_of :password, in: 3..20, on: :create
  has_secure_password
end
