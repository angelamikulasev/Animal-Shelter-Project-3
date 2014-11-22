annie = User.create!(
  firstname: 'Angela',
  lastname: 'Mikulasev',
  email: 'angela@angela.com',
  password: 'chicken', 
  password_confirmation:'chicken'
)

addy = User.create!(
  fistname: addy,
  lastname: mikulasev,
  email: addy@addy.com,
  password: addy,
  password_confirmation: addy
)

%w[Dogs Cats Reptiles Rabbits].each do |category|
  Category.create! name: category
end

buddy = Animal.create!(
  adoptee_id: annie.id,
  name: buddy,
  description: Brown Labrador,
  age: 2,
  species: Labrador,
  gender: Male,
  image:
  category_id: Category.where(name: 'Dogs').first.id 
)

buddy.update_attributes!(adopter_id: addy.id)

lily = Animal.create!(
  adoptee_id: ,
  name: lily,
  description: Ragdoll kitten,
  age: 1,
  species: Ragdoll,
  gender: Female,
  image: 
  category_id: Category.where(name: 'Cats').first.id
)
