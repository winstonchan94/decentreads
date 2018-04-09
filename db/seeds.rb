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


  red_rising = Book.create({
    title: "Red Rising",
    author_id: "#{pierce_brown.id}",
    publisher: "Del Rey Books",
    publish_date: Date.new(2014, 1, 28).to_formatted_s(:long_ordinal),
    description:
      [
        '"I live for the dream that my children will
        be born free," she says.
        "That they will be what they like.
        That they will own the land their father gave them."',

        '"I live for you," I say sadly.',

        'Eo kisses my cheek. "Then you must live for more."',

        'Darrow is a Red, a member of the lowest caste in the color-coded
        society of the future. Like his fellow Reds, he works all day,
        believing that he and his people are making the surface of Mars
        livable for future generations.',

        'Yet he spends his life willingly, knowing that his blood and sweat
        will one day result in a better world for his children.',

        'But Darrow and his kind have been betrayed. Soon he discovers that
        humanity already reached the surface generations ago. Vast cities
        and sprawling parks spread across the planet. Darrow—and Reds
        like him—are nothing more than slaves to a decadent ruling class.',

        'Inspired by a longing for justice, and driven by the memory of
        lost love, Darrow sacrifices everything to infiltrate the
        legendary Institute, a proving ground for the dominant Gold caste,
        where the next generation of humanity''s overlords struggle
        for power. He will be forced to compete for his life and the very
        future of civilization against the best and most brutal of
        Society''s ruling class. There, he will stop at nothing to bring
        down his enemies... even if it means he has to become one of
        them to do so.'
      ]

  })

  golden_son = Book.create({
    title: "Golden Son",
    author_id: "#{pierce_brown.id}",
    publisher: "Del Rey Books",
    publish_date: Date.new(2015, 1, 6).to_formatted_s(:long_ordinal),
    description:
      [
        "As a Red, Darrow grew up working the mines deep beneath the
        surface of Mars, enduring backbreaking labor while dreaming of
        the better future he was building for his descendants.
        But the Society he faithfully served was built on lies.
        Darrow’s kind have been betrayed and denied by their elitist
        masters, the Golds—and their only path to liberation is
        revolution. And so Darrow sacrifices himself in the name of
        the greater good for which Eo, his true love and inspiration,
        laid down her own life. He becomes a Gold, infiltrating their
        privileged realm so that he can destroy it from within.",

        "A lamb among wolves in a cruel world, Darrow finds
        friendship, respect, and even love—but also the wrath of
        powerful rivals. To wage and win the war that will change
        humankind’s destiny, Darrow must confront the treachery arrayed
        against him, overcome his all-too-human desire for retribution—and
        strive not for violent revolt but a hopeful rebirth. Though the
        road ahead is fraught with danger and deceit, Darrow must choose
        to follow Eo’s principles of love and
        justice to free his people.",

        "He must live for more."
      ]
  })

  morning_star = Book.create({
    title: "Morning Star",
    author_id: "#{pierce_brown.id}",
    publisher: "Del Rey Books",
    publish_date: Date.new(2016, 2, 9).to_formatted_s(:long_ordinal),
    description:
      [
        "#1 NEW YORK TIMES BESTSELLER • Red Rising thrilled readers and
        announced the presence of a talented new author. Golden Son
        changed the game and took the story of Darrow to the next level.
        Now comes the exhilarating conclusion to the
        Red Rising Trilogy: Morning Star.",

        "Darrow would have lived in peace, but his enemies brought him war.
        The Gold overlords demanded his obedience, hanged his wife,
        and enslaved his people. But Darrow is determined to fight back.
        Risking everything to transform himself and breach Gold society,
        Darrow has battled to survive the cutthroat rivalries that breed
        Society’s mightiest warriors, climbed the ranks, and waited
        patiently to unleash the revolution that will tear the hierarchy
        apart from within.",

        "Finally, the time has come.",

        "But devotion to honor and hunger for vengeance run deep on both
        sides. Darrow and his comrades-in-arms face powerful enemies
        without scruple or mercy. Among them are some Darrow once
        considered friends. To win, Darrow will need to inspire those
        shackled in darkness to break their chains, unmake the world
        their cruel masters have built, and claim a destiny too long
        denied—and too glorious to surrender."
      ]
  })


  iron_gold = Book.create({
      title: "Iron Gold",
      author_id: "#{pierce_brown.id}",
      publisher: "Del Rey Books",
      publish_date: Date.new(2018, 1, 18).to_formatted_s(:long_ordinal),
      description:
        [
          "They call him father, liberator, warlord, Reaper.
          But he feels a boy as he falls toward the pale blue planet,
          his armor red, his army vast, his heart heavy. It is the tenth year
          of war and the thirty-second of his life.",

          "A decade ago, Darrow was the hero of the revolution he
          believed would break the chains of the Society. But the Rising
          has shattered everything: Instead of peace and freedom, it has
          brought endless war. Now he must risk everything he has fought
          for on one last desperate mission. Darrow still believes he can
          save everyone, but can he save himself?",

          "And throughout the worlds, other destinies entwine with Darrow’s
          to change his fate forever:",

          "A young Red girl flees tragedy in her refugee camp and achieves
          for herself a new life she could never have imagined.",

          "An ex-soldier broken by grief is forced to steal the most valuable
          thing in the galaxy—or pay with his life.",

          "And Lysander au Lune, the heir in exile to the sovereign, wanders
          the stars with his mentor, Cassius, haunted by the loss of the
          world that Darrow transformed, and dreaming of what
          will rise from its ashes.",

          "Red Rising was the story of the end of one universe, and
          Iron Gold is the story of the creation of a new one.
          Witness the beginning of a stunning new saga of tragedy and
          triumph from masterly New York Times bestselling author Pierce Brown."
        ]
  })













#here
