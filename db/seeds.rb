# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Animal.destroy_all

snoopy = Animal.create(name: "Snoopy", photo_url: "http://img02.deviantart.net/08f5/i/2007/122/3/e/snoopy_dancing_by_jessie4508.jpg",
age: 5, gender: "male", bio: "my best friend is a bird, my dog house takes me places! I love to eat and sleep.", animal_type: "dog", user_id: 1)

dug = Animal.create(name: "Dug", photo_url: "http://www.empireonline.com/images/features/50-greatest-animated-characters/stills/10.jpg", age: 4, gender: "male", bio: "I'm loyal and I love adventuSQUIRREL.", animal_type: "dog", user_id: 2)

garfield = Animal.create(name: "Garfield", photo_url: "http://images.mentalfloss.com/sites/default/files/styles/insert_main_wide_image/public/489346.png", age: 7, gender: "male", bio: "Give me all the lasagna", animal_type: "cat", user_id: 3)

beethoven = Animal.create(name: "Beethoven", photo_url: "http://images.sodahead.com/polls/001622469/2631951034_01_wd0509_Beethoven_answer_6_xlarge.jpeg", age: 2, gender: "male", bio: "I'm a real family man and I love getting into mischief!", animal_type: "dog", user_id: 4)

tweety = Animal.create(name: "Tweety", photo_url: "https://upload.wikimedia.org/wikipedia/en/d/db/Woodstock.png", age: 9, gender: "female", bio: "I like to hang with my pal Snoopy.", animal_type: "bird", user_id: 5)

fluffy = Animal.create(name: "Fluffy", photo_url: "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=30867658", age: 50 , gender: "male", bio: "I'm a good guard dog for our home.  I also love falling asleep to the sound of music.", animal_type: "", user_id: 6)
