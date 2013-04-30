# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

dan     = User.create(username: 'dan')
rich    = User.create(username: 'rich')
tristan = User.create(username: 'tristan')

dan.followers << [rich, tristan]
rich.followers << [dan, tristan]
tristan.followers << [dan, rich]

Post.attr_accessible :created_at

dan.posts << Post.create(created_at: 1.day.ago, body: "Time is an illusion. Lunchtime, doubly so.")
dan.posts << Post.create(created_at: 2.days.ago, body: "If you want to survive out here, you've got to know where your towel is.")
dan.posts << Post.create(created_at: 3.days.ago, body: "We must talk.")
dan.posts << Post.create(created_at: 4.days.ago, body: "Whoah! Whoah! Whoah! You know already?")
dan.posts << Post.create(created_at: 5.days.ago, body: "Oh, *they*! When you say 'they' you mean *they*!")
dan.posts << Post.create(created_at: 6.days.ago, body: "Workers of the earth! I bring... good tidings of peanuts! And beer!")
dan.posts << Post.create(created_at: 7.days.ago, body: "Didn't you think it was strange I was trying to shake hands with a car?")

rich.posts << Post.create(created_at: 1.day.ago, body: "I'm sensing a lot of hostility from you, Alex.")
rich.posts << Post.create(created_at: 2.days.ago, body: "Have you ever tried yoga?")
rich.posts << Post.create(created_at: 3.days.ago, body: "Hey! Is this guy boring you? Why don't you come talk to me instead? I'm from a different planet. Seriously!")
rich.posts << Post.create(created_at: 4.days.ago, body: "You want to see my spaceship?")
rich.posts << Post.create(created_at: 5.days.ago, body: "Why so edgy, baby doll? Relax.")

tristan.posts << Post.create(created_at: 1.day.ago, body: "Arthur!")
tristan.posts << Post.create(created_at: 2.days.ago, body: "Did you? Did you?")
tristan.posts << Post.create(created_at: 3.days.ago, body: "It must be Thursday. I never could get the hang of Thursdays.")
tristan.posts << Post.create(created_at: 4.days.ago, body: "Not now, Ford. They're gonna demolish my home.")
tristan.posts << Post.create(created_at: 5.days.ago, body: "I assumed you were drunk.")
tristan.posts << Post.create(created_at: 6.days.ago, body: "So you're not from Guildford. Which would explain the accent.")
