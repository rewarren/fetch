# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Snoopy = Animal.create(name: "Snoopy", photo_url: "http://img02.deviantart.net/08f5/i/2007/122/3/e/snoopy_dancing_by_jessie4508.jpg",
age: 5, gender: "male", bio: "my best friend is a bird, my dog house takes me places! I love to eat and sleep.", animal_type: "dog")

Dug = Animal.create(name: "Dug", photo_url: "http://www.empireonline.com/images/features/50-greatest-animated-characters/stills/10.jpg", age: 4, gender: "male", bio: "I love adventuSQUIRREL.", animal_type: "dog")

Garfield = Animal.create(name: "Garfield", photo_url: "http://images.mentalfloss.com/sites/default/files/styles/insert_main_wide_image/public/489346.png", age: 7, gender: "male", bio: "My human annoys me.", animal_type: "cat")
