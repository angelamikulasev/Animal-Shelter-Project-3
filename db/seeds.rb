User.destroy_all

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

Category.destroy_all

%w[Dogs Cats Other].each do |category|
  Category.create! name: category
end

Animal.destroy_all

buddy = Animal.create!(
  adoptee_id: annie.id,
  name: 'Buddy',
  about_me: 'I am a dog',
  ideal_home: 'Big backyard',
  breed: 'Dog',
  gender: 'Male',
  child_friendly: true,
  remote_image_url: 'http://a1.dspnimg.com/data/g/426128089239_2H1pNAoy_g.jpg',
  breed: Category.where(name: 'Dogs').first.id 
)

buddy.update_attributes!(adopter_id: addy.id)

lily = Animal.create!(
  adoptee_id: annie.id,
  name: 'Lily',
  about_me: 'I am a cat',
  ideal_home: 'Cosy home',
  breed: 'Cat',
  gender: 'Female',
  child_friendly: true,
  remote_image_url: 'http://a1.dspnimg.com/data/l/3225228245989_68tEtJNp_l.jpg',
  breed: Category.where(name: 'Cats').first.id
)

roger = Animal.create!(
  # adoptee_id: annie.id,
  name: 'Roger',
  about_me: 'Shes a tiny pocket rocket who has been learning patience and good doggie manners while living a routine life with her carer. Tiffany is very polite with the other dogs in the household although will stand her ground if they try and steal her bone. She also quite likes the cats although wants to play with them a little more than they are happy with.',
  ideal_home: 'Big backyard',
  breed: 'Dog',
  gender: 'Male',
  child_friendly: false,
  remote_image_url: 'http://www.seniorsandsilkies.org.au/uploads/1/8/7/9/18790170/6302818_orig.jpg',
  breed: Category.where(name: 'Dogs').first.id 
)

pippa = Animal.create!(
  # adoptee_id: annie.id,
  name: 'Pippa',
  about_me: 'Shes a tiny pocket rocket who has been learning patience and good doggie manners while living a routine life with her carer. Tiffany is very polite with the other dogs in the household although will stand her ground if they try and steal her bone. She also quite likes the cats although wants to play with them a little more than they are happy with.',
  ideal_home: 'Big backyard',
  breed: 'Cat',
  gender: 'Female',
  child_friendly: false,
  remote_image_url: 'http://upload.wikimedia.org/wikipedia/commons/f/f0/Bicolor_he-cat.JPG',
  breed: Category.where(name: 'Cats').first.id 
)

bertie = Animal.create!(
  # adoptee_id: annie.id,
  name: 'Bertie',
  about_me: "He is around 10yrs young and a small size chihuahua cross. He is fully recovered and has also been desexed, chipped, vaccinated, had a dental, been heartworm tested and has had full blood panels done to ensure he not suffering the after effects of starvation. When he arrived he looked very much like an ancient dog who would need to retire with us so if you'd like to see Berts intake photos we've put them on the Cherished Treasures page. Before being up for adoption he is going to go to the eye specialist to see if he's eligible for cataract surgery.",
  ideal_home: 'Big backyard',
  breed: 'Dog',
  gender: 'Male',
  child_friendly: true,
  remote_image_url: 'http://www.seniorsandsilkies.org.au/uploads/1/8/7/9/18790170/7303565.png?455',
  breed: Category.where(name: 'Dogs').first.id 
)

ruby = Animal.create!(
  # adoptee_id: annie.id,
  name: 'Ruby',
  about_me: "She is around 10yrs young and a small size chihuahua cross. She is fully recovered and has also been desexed, chipped, vaccinated, had a dental, been heartworm tested and has had full blood panels done to ensure he not suffering the after effects of starvation. When he arrived he looked very much like an ancient dog who would need to retire with us so if you'd like to see Berts intake photos we've put them on the Cherished Treasures page. Before being up for adoption he is going to go to the eye specialist to see if he's eligible for cataract surgery.",
  ideal_home: 'Big backyard',
  breed: 'Dog',
  gender: 'Female',
  child_friendly: true,
  remote_image_url: 'http://thedogwallpaper.com/wp-content/uploads/2013/10/dog-wallpaper-german-shepherd-12.jpg',
  breed: Category.where(name: 'Dogs').first.id 
)

zara = Animal.create!(
  # adoptee_id: annie.id,
  name: 'Zara',
  about_me: "She is around 10yrs young and a small size chihuahua cross. She is fully recovered and has also been desexed, chipped, vaccinated, had a dental, been heartworm tested and has had full blood panels done to ensure he not suffering the after effects of starvation. When he arrived he looked very much like an ancient dog who would need to retire with us so if you'd like to see Berts intake photos we've put them on the Cherished Treasures page. Before being up for adoption he is going to go to the eye specialist to see if he's eligible for cataract surgery.",
  ideal_home: 'Big backyard',
  breed: 'Dog',
  gender: 'Female',
  child_friendly: true,
  remote_image_url: 'http://www.dogbreedinfo.com/images24/LabradorRetrieverMollyChocLabPurebredDog.jpg',
  breed: Category.where(name: 'Dogs').first.id 
)

stripe = Animal.create!(
  # adoptee_id: annie.id,
  name: 'Stripe',
  about_me: 'Shes a tiny pocket rocket who has been learning patience and good doggie manners while living a routine life with her carer. Tiffany is very polite with the other dogs in the household although will stand her ground if they try and steal her bone. She also quite likes the cats although wants to play with them a little more than they are happy with.',
  ideal_home: 'Big backyard',
  breed: 'Cat',
  gender: 'Female',
  child_friendly: false,
  remote_image_url: 'http://exocticpetplus.com/wp-content/uploads/2014/03/Bengal-Kittens.jpg',
  breed: Category.where(name: 'Cats').first.id 
)

spot = Animal.create!(
  # adoptee_id: annie.id,
  name: 'Spot',
  about_me: "She is around 10yrs young and a small size chihuahua cross. She is fully recovered and has also been desexed, chipped, vaccinated, had a dental, been heartworm tested and has had full blood panels done to ensure he not suffering the after effects of starvation. When he arrived he looked very much like an ancient dog who would need to retire with us so if you'd like to see Berts intake photos we've put them on the Cherished Treasures page. Before being up for adoption he is going to go to the eye specialist to see if he's eligible for cataract surgery.",
  ideal_home: 'Big backyard',
  breed: 'Dog',
  gender: 'Female',
  child_friendly: true,
  remote_image_url: 'http://thescrumptiouspumpkin.com/wp-content/uploads/2012/11/cropimg_7964.jpg',
  breed: Category.where(name: 'Dogs').first.id 
)

josie = Animal.create!(
  # adoptee_id: annie.id,
  name: 'Josie',
  about_me: "Josie was rescued with her two siblings at the precious age of two weeks after her mother was sadly killed in an accident. Josie loves playing with toys, chasing balls & will climb all over you for cuddles & kisses for hours. She is a real cuddle bug & loves being around others. Josie has had no problems with other cats at this stage but her mummy has always been close by just in case.",
  ideal_home: 'Inside pet',
  breed: 'Cat',
  gender: 'Female',
  child_friendly: false,
  remote_image_url: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQYogDLugINcBqsrcKs5q2x3vj7CZ4w5mQctcX4vc-OJxbek9ZF5w',
  breed: Category.where(name: 'Dogs').first.id 
)

rosie = Animal.create!(
  # adoptee_id: annie.id,
  name: 'Rosie',
  about_me: "Rosie was rescued with her two siblings at the precious age of two weeks after her mother was sadly killed in an accident. Josie loves playing with toys, chasing balls & will climb all over you for cuddles & kisses for hours. She is a real cuddle bug & loves being around others. Josie has had no problems with other cats at this stage but her mummy has always been close by just in case.",
  ideal_home: 'Inside pet',
  breed: 'Dog',
  gender: 'Female',
  child_friendly: false,
  remote_image_url: 'http://www.petpaw.com.au/wp-content/uploads/2013/02/Dachshund1.jpg',
  breed: Category.where(name: 'Dogs').first.id 
)


tiger = Animal.create!(
  # adoptee_id: annie.id,
  name: 'Tiger',
  about_me: "She is around 10yrs young and a small size chihuahua cross. She is fully recovered and has also been desexed, chipped, vaccinated, had a dental, been heartworm tested and has had full blood panels done to ensure he not suffering the after effects of starvation. When he arrived he looked very much like an ancient dog who would need to retire with us so if you'd like to see Berts intake photos we've put them on the Cherished Treasures page. Before being up for adoption he is going to go to the eye specialist to see if he's eligible for cataract surgery.",
  ideal_home: 'Big backyard',
  breed: 'Cat',
  gender: 'Female',
  child_friendly: true,
  remote_image_url: 'http://2.bp.blogspot.com/_PcroJLjTNxQ/TJv2JQvv2MI/AAAAAAAABVc/fD0kFwf0P9o/s320/black+m.JPG',
  breed: Category.where(name: 'Cats').first.id 
)

rover = Animal.create!(
  # adoptee_id: annie.id,
  name: 'Rover',
  about_me: "She is around 10yrs young and a small size chihuahua cross. She is fully recovered and has also been desexed, chipped, vaccinated, had a dental, been heartworm tested and has had full blood panels done to ensure he not suffering the after effects of starvation. When he arrived he looked very much like an ancient dog who would need to retire with us so if you'd like to see Berts intake photos we've put them on the Cherished Treasures page. Before being up for adoption he is going to go to the eye specialist to see if he's eligible for cataract surgery.",
  ideal_home: 'Big backyard',
  breed: 'Dog',
  gender: 'Female',
  child_friendly: true,
  remote_image_url: 'http://www.pets4homes.co.uk/images/classifieds/2012/10/31/154476/large/3-4-pug-puppies-5458bbdb62a89.jpg',
  breed: Category.where(name: 'Dogs').first.id 
)







