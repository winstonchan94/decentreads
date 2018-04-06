# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Book.destroy_all
# users

demo = User.create({name: "demo", email: "demo", password: "password"})
pierce_brown = User.create({name: "Pierce Brown", email: "pierce_brown@piercebrown.com", password: "password"})
# books

iron_gold = Book.create({
    title: "Iron Gold",
    author_id: "#{pierce_brown.id}",
    description: "They call him father, liberator, warlord, Reaper. But he feels a boy as he falls toward the pale blue planet, his armor red, his army vast, his heart heavy. It is the tenth year of war and the thirty-second of his life.

      A decade ago, Darrow was the hero of the revolution he believed would break the chains of the Society. But the Rising has shattered everything: Instead of peace and freedom, it has brought endless war. Now he must risk everything he has fought for on one last desperate mission. Darrow still believes he can save everyone, but can he save himself?

      And throughout the worlds, other destinies entwine with Darrow’s to change his fate forever:

      A young Red girl flees tragedy in her refugee camp and achieves for herself a new life she could never have imagined.

      An ex-soldier broken by grief is forced to steal the most valuable thing in the galaxy—or pay with his life.

      And Lysander au Lune, the heir in exile to the sovereign, wanders the stars with his mentor, Cassius, haunted by the loss of the world that Darrow transformed, and dreaming of what will rise from its ashes.

      Red Rising was the story of the end of one universe, and Iron Gold is the story of the creation of a new one. Witness the beginning of a stunning new saga of tragedy and triumph from masterly New York Times bestselling author Pierce Brown.",
    publisher: "Del Rey Books",
    publish_date: Date.new(2018, 1, 18).to_formatted_s(:long_ordinal)

  })















#here
