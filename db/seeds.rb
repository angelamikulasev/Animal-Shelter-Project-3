annie = User.create!(
  firstname: 'Angela',
  lastname: 'Mikulasev',
  email: 'angela@angela.com',
  password: 'chicken', 
  password_confirmation:'chicken'
)

addy = User.create!(
  firstname: 'addy',
  lastname: 'mikulasev',
  email: 'addy@addy.com',
  password: 'addy',
  password_confirmation: 'addy'
)

%w[Dogs Cats Reptiles Rabbits].each do |category|
  Category.create! name: category
end

buddy = Animal.create!(
  adoptee_id: annie.id,
  name: 'Buddy',
  about_me: 'I am a dog',
  ideal_home: 'Big backyard',
  species: 'Dog',
  gender: 'male',
  child_friendly: 'true',
  image: 'http://a1.dspnimg.com/data/g/426128089239_2H1pNAoy_g.jpg',
  # category_id: Category.where(name: 'Dogs').first.id 
)

buddy.update_attributes!(adopter_id: addy.id)

lily = Animal.create!(
  adoptee_id: annie.id,
  name: 'Lily',
  about_me: 'I am a cat',
  ideal_home: 'Cosy home',
  species: 'Cat',
  gender: 'female',
  child_friendly: 'true',
  image: 'http://a1.dspnimg.com/data/l/3225228245989_68tEtJNp_l.jpg',
  # category_id: Category.where(name: 'Cats').first.id
)
