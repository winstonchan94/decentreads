# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Shelving.destroy_all
User.destroy_all
Book.destroy_all
Review.destroy_all
# users

demo = User.create(name: "Artour Babaev", email: "demo", password: "password")
pierce_brown = User.create(name: "Pierce Brown", email: "pierce_brown@piercebrown.com", password: "password")
tolkien = User.create(name: "J.R.R. Tolkien", email: "tolkien@tolkien.com", password: "password")
rowling = User.create(name: "J.K. Rowling", email: "rowling@rowling.com", password: "password")
hawking = User.create(name: "Stephen Hawking", email: "hawking", password: "password")
dumas = User.create(name: "Alexandre Dumas", email: "dumas", password: "password")
plato = User.create(name: "Plato", email: "plato", password: "password")
marcus = User.create(name: "Marcus Aurelius", email: "marcus", password: "password")
20.times do |time|
  newUser = User.create(name: Faker::Name.unique.name, email: Faker::Internet.unique.email, password: "password")
  Shelf.create(name: "Read", user_id: newUser.id)
  Shelf.create(name: "Currently Reading", user_id: newUser.id)
  Shelf.create(name: "Want to Read", user_id: newUser.id)
end

seedUsers = User.all.select{|user| user.id != demo.id}




  red_rising = Book.create(
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
      ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523377883/red_rising.jpg"

  )

  golden_son = Book.create(
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
      ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523377883/golden_son.jpg"
  )

  morning_star = Book.create(
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
      ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523377883/morning_star.jpg"
  )


  iron_gold = Book.create(
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
      ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523377883/iron_gold.jpg"
  )

  hobbit = Book.create(
    title: "The Hobbit",
    author_id: "#{tolkien.id}",
    publisher: "Houghton Mifflin",
    publish_date: "(republished) #{Date.new(2002, 8, 15).to_formatted_s(:long_ordinal)}",
    description: [
      "In a hole in the ground there lived a hobbit. Not a nasty,
      dirty, wet hole, filled with the ends of worms and an oozy
      smell, nor yet a dry, bare, sandy hole with nothing in it to sit
      down on or to eat: it was a hobbit-hole, and that means comfort.",

      "Written for J.R.R. Tolkien’s own children, The Hobbit met with
      instant critical acclaim when it was first published in 1937.
      Now recognized as a timeless classic, this introduction to the
      hobbit Bilbo Baggins, the wizard Gandalf, Gollum, and the
      spectacular world of Middle-earth recounts of the adventures of
      a reluctant hero, a powerful and dangerous ring, and the cruel
      dragon Smaug the Magnificent. The text in this 372-page paperback
      edition is based on that first published in Great Britain by
      Collins Modern Classics (1998), and includes a note on the text
      by Douglas A. Anderson (2001). Unforgettable!"
    ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523379154/hobbit.jpg"
  )

  lotr_fellowship = Book.create(
    title: "The Fellowship of the Ring",
    author_id: "#{tolkien.id}",
    publisher: "Houghton Mifflin Harcourt",
    publish_date: "(republished) #{Date.new(2003, 9, 5).to_formatted_s(:long_ordinal)}",
    description: [
      "One Ring to rule them all, One Ring to find them,
       One Ring to bring them all and in the darkeness bind them",

      "In ancient times the Rings of Power were crafted by the
      Elven-smiths, and Sauron, The Dark Lord, forged the One Ring,
      filling it with his own power so that he could rule all others.
      But the One Ring was taken from him, and though he sought it
      throughout Middle-earth, it remained lost to him. After many ages
      it fell into the hands of Bilbo Baggins, as told in The Hobbit.",

      "In a sleepy village in the Shire, young Frodo Baggins finds
      himself faced with an immense task, as his elderly cousin Bilbo
      entrusts the Ring to his care. Frodo must leave his home and make
      a perilous journey across Middle-earth to the Cracks of Doom,
      there to destroy the Ring and foil the Dark Lord in his evil purpose."
    ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523377883/fellowship_ring.jpg"
  )

  lotr_twotowers = Book.create(
    title: "The Two Towers",
    author_id: "#{tolkien.id}",
    publisher: "Mariner Books",
    publish_date: "(republished) #{Date.new(2003, 9, 5).to_formatted_s(:long_ordinal)}",
    description: [
      "The Fellowship was scattered. Some were bracing hopelessly for
      war against the ancient evil of Sauron. Some were contending with
      the treachery of the wizard Saruman. Only Frodo and Sam were left
      to take the accursed Ring of Power to be destroyed in Mordor–the
      dark Kingdom where Sauron was supreme. Their guide was Gollum,
      deceitful and lust-filled, slave to the corruption of the Ring.
      Thus continues the magnificent, bestselling tale of adventure
      begun in The Fellowship of the Ring, which reaches its
      soul-stirring climax in The Return of the King."
    ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523380834/two_towers.jpg"
  )

  lotr_rotk = Book.create(
    title: "The Return of the King",
    author_id: "#{tolkien.id}",
    publisher: "Dey Rey",
    publish_date: "(republished) 2003",
    description: [
      "The Companions of the Ring have become involved in separate
      adventures as the quest continues. Aragorn, revealed as the
      hidden heir of the ancient Kings of the West, joined with the
      Riders of Rohan against the forces of Isengard, and took part
      in the desperate victory of the Hornburg. Merry and Pippin,
      captured by Orcs, escaped into Fangorn Forest and there
      encountered the Ents. Gandalf returned, miraculously, and
      defeated the evil wizard, Saruman. Meanwhile, Sam and Frodo
      progressed towards Mordor to destroy the Ring, accompanied by
      SmEagol--Gollum, still obsessed by his 'precious'. After a battle
      with the giant spider, Shelob, Sam left his master for dead; but
      Frodo is still alive--in the hands of the Orcs. And all the time
      the armies of the Dark Lord are massing. J.R.R. Tolkien's great
      work of imaginative fiction has been labeled both a heroic romance
      and a classic fantasy fiction. By turns comic and homely, epic and
      diabolic, the narrative moves through countless changes of scene
      and character in an imaginary world which is totally convincing
      in its detail. "
    ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523380834/rotk.jpg"
  )

  silmarillion = Book.create(
    title: "The Silmarillion",
    author_id: "#{tolkien.id}",
    publisher: "Houghton Mifflin Harcourt",
    publish_date: "(republished) #{Date.new(2004, 11, 15).to_formatted_s(:long_ordinal)}",
    description: [
      "The story of the creation of the world and of the First Age,
      this is the ancient drama to which the characters in The Lord
      of the Rings look back and in whose events some of them, such as
      Elrond and Galadriel, took part.",

      "The three Silmarils were jewels created by Fëanor, most gifted
      of the Elves. Within them was imprisoned the Light of the Two
      Trees of Valinor before the Trees themselves were destroyed by
      Morgoth, the first Dark Lord.",

      "Thereafter, the unsullied Light of Valinor lived on only in the
      Silmarils, but they were seized by Morgoth and set in his crown,
      which was guarded in the impenetrable fortress of Angband in the
      north of Middle-earth.",

      "The Silmarillion is the history of the rebellion of Fëanor and
      his kindred against the gods, their exile from Valinor and
      return to Middle-earth, and their war, hopeless despite all
      their heroism, against the great Enemy."
    ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523380834/silmarillion.jpg"
  )

  hp_one = Book.create(
    title: "Harry Potter and the Sorceror's Stone",
    author_id: "#{rowling.id}",
    publisher: "Scholastic Inc.",
    publish_date: Date.new(1997, 6, 26).to_formatted_s(:long_ordinal),
    description: [
      "Harry Potter's life is miserable. His parents are dead and he's
      stuck with his heartless relatives, who force him to live in a
      tiny closet under the stairs. But his fortune changes when he
      receives a letter that tells him the truth about himself: he's a
      wizard. A mysterious visitor rescues him from his relatives and
      takes him to his new home, Hogwarts School of Witchcraft and Wizardry.",

      "After a lifetime of bottling up his magical powers, Harry finally
      feels like a normal kid. But even within the Wizarding community,
      he is special. He is the boy who lived: the only person to have
      ever survived a killing curse inflicted by the evil Lord Voldemort,
      who launched a brutal takeover of the Wizarding world, only to
      vanish after failing to kill Harry.",

      "Though Harry's first year at Hogwarts is the best of his life,
      not everything is perfect. There is a dangerous secret object
      hidden within the castle walls, and Harry believes it's his
      responsibility to prevent it from falling into evil hands. But
      doing so will bring him into contact with forces more terrifying
      than he ever could have imagined.",

      "Full of sympathetic characters, wildly imaginative situations,
      and countless exciting details, the first installment in the
      series assembles an unforgettable magical world and sets the
      stage for many high-stakes adventures to come."
    ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523381458/hp1.jpg"
  )

  hp_two = Book.create(
    title: "Harry Potter and the Chamber of Secrets",
    author_id: "#{rowling.id}",
    publisher: "Arthur A. Levine Books",
    publish_date: Date.new(1999, 6, 2).to_formatted_s(:long_ordinal),
    description: [
      "The Dursleys were so mean and hideous that summer that all Harry
      Potter wanted was to get back to the Hogwarts School for
      Witchcraft and Wizardry. But just as he's packing his bags,
      Harry receives a warning from a strange, impish creature named
      Dobby who says that if Harry Potter returns to Hogwarts,
      disaster will strike.",

      "And strike it does. For in Harry's second year at Hogwarts,
      fresh torments and horrors arise, including an outrageously
      stuck-up new professor, Gilderoy Lockhart, a spirit named
      Moaning Myrtle who haunts the girls' bathroom, and the unwanted
      attentions of Ron Weasley's younger sister, Ginny.",

      "But each of these seem minor annoyances when the real trouble
      begins, and someone -- or something -- starts turning Hogwarts
      students to stone. Could it be Draco Malfoy, a more poisonous
      rival than ever? Could it possibly be Hagrid, whose mysterious
      past is finally told? Or could it be the one everyone at Hogwarts
      most suspects . . . Harry Potter himself?"
    ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523381457/hp2.jpg"
  )

  hp_three = Book.create(
    title: "Harry Potter and the Prisoner of Azkaban",
    author_id: "#{rowling.id}",
    publisher: "Scholastic Inc.",
    publish_date:"(republished) #{Date.new(2004, 5, 1).to_formatted_s(:long_ordinal)}",
    description: [
      "Harry Potter's third year at Hogwarts is full of new dangers.
      A convicted murderer, Sirius Black, has broken out of Azkaban
      prison, and it seems he's after Harry. Now Hogwarts is being
      patrolled by the dementors, the Azkaban guards who are hunting
      Sirius. But Harry can't imagine that Sirius or, for that matter,
      the evil Lord Voldemort could be more frightening than the
      dementors themselves, who have the terrible power to fill anyone
      they come across with aching loneliness and despair. Meanwhile,
      life continues as usual at Hogwarts. A top-of-the-line broom
      takes Harry's success at Quidditch, the sport of the Wizarding
      world, to new heights. A cute fourth-year student catches his eye.
      And he becomes close with the new Defense of the Dark Arts
      teacher, who was a childhood friend of his father. Yet despite
      the relative safety of life at Hogwarts and the best efforts of
      the dementors, the threat of Sirius Black grows ever closer.
      But if Harry has learned anything from his education in wizardry,
      it is that things are often not what they seem. Tragic
      revelations, heartwarming surprises, and high-stakes magical
      adventures await the boy wizard in this funny and poignant
      third installment of the beloved series.",
    ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523381457/hp3.jpg"
  )

  hp_four = Book.create(
    title: "Harry Potter and the Goblet of Fire",
    author_id: "#{rowling.id}",
    publisher: "Scholastic Inc.",
    publish_date:"(republished) #{Date.new(2002, 9, 28).to_formatted_s(:long_ordinal)}",
    description: [
      "Harry Potter is midway through his training as a wizard and his
      coming of age. Harry wants to get away from the pernicious
      Dursleys and go to the International Quidditch Cup. He wants to
      find out about the mysterious event that's supposed to take place
      at Hogwarts this year, an event involving two other rival schools
      of magic, and a competition that hasn't happened for a hundred
      years. He wants to be a normal, fourteen-year-old wizard. But
      unfortunately for Harry Potter, he's not normal - even by
      wizarding standards. And in his case, different can be deadly.",
    ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523381457/hp4.jpg"
  )

  hp_five = Book.create(
    title: "Harry Potter and the Order of the Phoenix",
    author_id: "#{rowling.id}",
    publisher: "Scholastic Inc.",
    publish_date:"(republished) #{Date.new(2004, 8, 10).to_formatted_s(:long_ordinal)}",
    description: [
      "Harry Potter and the Order of the Phoenix is the fifth novel in
      the Harry Potter series, written by J. K. Rowling. It follows
      Harry Potter's struggles through his fifth year at Hogwarts
      School of Witchcraft and Wizardry, including the surreptitious
      return of the antagonist Lord Voldemort, O.W.L. exams, and an
      obstructive Ministry of Magic. The novel was published on 21 June
      2003 by Bloomsbury in the United Kingdom, Scholastic in the
      United States, and Raincoast in Canada. Five million copies were
      sold in the first 24 hours of publication.[2] It is the longest
      book of the series. Harry Potter and the Order of the Phoenix has
      won several awards, including being named an American Library
      Association Best Book for Young Adults in 2003. The book has also
      been made into a film, which was released in 2007, and into a
      video game by Electronic Arts.",
    ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523381457/hp5.jpg"
  )

  hp_six = Book.create(
    title: "Harry Potter and the Half-Blood Prince",
    author_id: "#{rowling.id}",
    publisher: "Scholastic Inc.",
    publish_date:"(republished) #{Date.new(2006, 9, 16).to_formatted_s(:long_ordinal)}",
    description: [
      "When Harry Potter and the Half-Blood Prince opens, the war
      against Voldemort has begun. The Wizarding world has split down
      the middle, and as the casualties mount, the effects even spill
      over onto the Muggles. Dumbledore is away from Hogwarts for long
      periods, and the Order of the Phoenix has suffered grievous
      losses. And yet, as in all wars, life goes on.",

      "Harry, Ron, and Hermione, having passed their O.W.L. level
      exams, start on their specialist N.E.W.T. courses. Sixth-year
      students learn to Apparate, losing a few eyebrows in the process.
      Teenagers flirt and fight and fall in love. Harry becomes captain
      of the Gryffindor Quidditch team, while Draco Malfoy pursues his
      own dark ends. And classes are as fascinating and confounding as
      ever, as Harry receives some extraordinary help in Potions from
      the mysterious Half-Blood Prince.",

      "Most importantly, Dumbledore and Harry work together to uncover
      the full and complex story of a boy once named Tom Riddle—the boy
      who became Lord Voldemort. Like Harry, he was the son of one
      Muggle-born and one Wizarding parent, raised unloved, and a
      speaker of Parseltongue. But the similarities end there, as the
      teenaged Riddle became deeply interested in the Dark objects
      known as Horcruxes: objects in which a wizard can hide part of
      his soul, if he dares splinter that soul through murder.",

      "Harry must use all the tools at his disposal to draw a final
      secret out of one of Riddle’s teachers, the sly Potions professor
      Horace Slughorn. Finally Harry and Dumbledore hold the key to the
      Dark Lord’s weaknesses... until a shocking reversal exposes
      Dumbledore’s own vulnerabilities, and casts Harry’s—and
      Hogwarts’s—future in shadow."
    ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523381457/hp6.jpg"
  )

  hp_seven = Book.create(
    title: "Harry Potter and the Deathly Hallows",
    author_id: "#{rowling.id}",
    publisher: "Scholastic Inc.",
    publish_date:"(republished) #{Date.new(2007, 7, 21).to_formatted_s(:long_ordinal)}",
    description: [
      "It's no longer safe for Harry at Hogwarts, so he and his best
      friends, Ron and Hermione, are on the run. Professor Dumbledore
      has given them clues about what they need to do to defeat the
      dark wizard, Lord Voldemort, once and for all, but it's up to
      them to figure out what these hints and suggestions really mean.",

      "Their cross-country odyssey has them searching desperately for
      the answers, while evading capture or death at every turn. At
      the same time, their friendship, fortitude, and sense of right
      and wrong are tested in ways they never could have imagined.",

      "The ultimate battle between good and evil that closes out this
      final chapter of the epic series takes place where Harry's
      Wizarding life began: at Hogwarts. The satisfying conclusion
      offers shocking last-minute twists, incredible acts of courage,
      powerful new forms of magic, and the resolution of many mysteries.",

      "Above all, this intense, cathartic book serves as a clear
      statement of the message at the heart of the Harry Potter series:
      that choice matters much more than destiny, and that love will
      always triumph over death."
    ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523381457/hp7.jpg"
  )

  Book.create(
    title: "A Brief History of Time",
    author_id: hawking.id,
    publisher: "Bantam Books",
    publish_date: "September 1st 1998",
    description: ["In the ten years since its publication in 1988,
      Stephen Hawking's classic work has become a landmark volume in
      scientific writing, with more than nine million copies in forty
      languages sold worldwide. That edition was on the cutting edge of
      what was then known about the origins and nature of the universe.
      But the intervening years have seen extraordinary advances in the
      technology of observing both the micro- and the macrocosmic worlds.
      These observations have confirmed many of Professor Hawking's
      theoretical predictions in the first edition of his book, including
      the recent discoveries of the Cosmic Background Explorer satellite
      (COBE), which probed back in time to within 300,000 years of the
      universe's beginning and revealed wrinkles in the fabric of
      space-time that he had projected. Eager to bring to his original
      text the new knowledge revealed by these observations, as well as
      his own recent research, Professor Hawking has prepared a new
      introduction to the book, written an entirely new chapter on
      wormholes and time travel, and updated the chapters throughout."],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523651498/brief_hist.jpg"
  )

  Book.create(
    title: "The Grand Design",
    author_id: hawking.id,
    publisher: "Bantam Books",
    publish_date: "September 7th 2010",
    description: ["THE FIRST MAJOR WORK IN NEARLY A DECADE BY ONE OF
      THE WORLD’S GREAT THINKERS—A MARVELOUSLY CONCISE BOOK WITH NEW
      ANSWERS TO THE ULTIMATE QUESTIONS OF LIFE",

      "When and how did the
      universe begin? Why are we here? Why is there something rather
      than nothing? What is the nature of reality? Why are the laws
      of nature so finely tuned as to allow for the existence of
      beings like ourselves? And, finally, is the apparent “grand
      design” of our universe evidence of a benevolent creator who
      set things in motion—or does science offer another explanation?"],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523651498/grand_design.jpg"
  )

  Book.create(
    title: "The Universe in a Nutshell",
    author_id: hawking.id,
    publisher: "Bantam Books",
    publish_date: "November 6th 2001",
    description: [
      "Stephen Hawking’s phenomenal, multimillion-copy bestseller,
      A Brief History of Time, introduced the ideas of this brilliant
      theoretical physicist to readers all over the world.",

      "Now, in a major publishing event, Hawking returns with a
      lavishly illustrated sequel that unravels the mysteries of the
      major breakthroughs that have occurred in the years since the
      release of his acclaimed first book."
    ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523651498/nutshell.jpg"
  )

  Book.create(
    title: "A Briefer History of Time",
    author_id: hawking.id,
    publisher: "Bantam Books",
    publish_date: "September 27th 2005",
    description: [
      "Now, in a major publishing event, Hawking returns with a lavishly illustrated sequel that unravels the mysteries of the major breakthroughs that have occurred in the years since the release of his acclaimed first book.",
      "Although “briefer,” this book is much more than a mere explanation of Hawking’s earlier work. A Briefer History of Time both clarifies and expands on the great subjects of the original, and records the latest developments in the field—from string theory to the search for a unified theory of all the forces of physics. Thirty-seven full-color illustrations enhance the text and make A Briefer History of Time an exhilarating and must-have addition in its own right to the great literature of science and ideas."
    ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523651498/briefer.jpg"
  )

  Book.create(
    title: "Black Holes and Baby Universes",
    author_id: hawking.id,
    publisher: "Bantam Books",
    publish_date: "September 1st 1994",
    description: [
      "NY Times bestseller. 13 extraordinary essays shed new light on the mysteries of the universe & on one of the most brilliant thinkers of our time.
In his phenomenal bestseller A Brief History of Time, Stephen Hawking literally transformed the way we think about physics, the universe, reality itself. In these thirteen essays and one remarkable extended interview, the man widely regarded as the most brilliant theoretical physicist since Einstein returns to reveal an amazing array of possibilities for understanding our universe. Building on his earlier work, Hawking discusses imaginary time, how black holes can give birth to baby universes, and scientists’ efforts to find a complete unified theory that would predict everything in the universe. With his characteristic mastery of language, his sense of humor and commitment to plain speaking, Stephen Hawking invites us to know him better—and to share his passion for the voyage of intellect and imagination that has opened new ways to understanding the very nature of the cosmos."
],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523651498/black_holes.jpg"
  )

  Book.create(
    title: "The Theory of Everything: The Origin and Fate of the Universe",
    author_id: hawking.id,
    publisher: "New Millennium Entertainment",
    publish_date: "May 15th 2002",
    description: [
      'Based on a series of lectures given at Cambridge University, Professor Hawking''s work introduced "the history of ideas about the universe" as well as today''s most important scientific theories about time, space, and the cosmos in a clear, easy-to-understand way. "The Theory of Everything" presents the most complex theories, both past and present, of physics; yet it remains clear and accessible. It will enlighten readers and expose them to the rich history of scientific thought and the complexities of the universe in which we live.'
    ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523651498/everything.jpg"
  )

  Book.create(
    title: "The Count of Monte Cristo",
    author_id: dumas.id,
    publisher: "Penguin Classics",
    publish_date: "May 27th 2003",
    description: [
      "In 1815 Edmond Dantès, a young and successful merchant sailor who has just recently been granted the succession of his erstwhile captain Leclère, returns to Marseille to marry his Catalan fiancée Mercédès. Thrown in prison for a crime he has not committed, Edmond Dantès is confined to the grim fortress of If. There he learns of a great hoard of treasure hidden on the Isle of Monte Cristo and he becomes determined not only to escape, but also to unearth the treasure and use it to plot the destruction of the three men responsible for his incarceration."
    ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523651498/monte_cristo.jpg"
  )

  Book.create(
    title: "The Republic",
    author_id: plato.id,
    publisher: "Penguin Classics",
    publish_date: "February 25th 2003",
    description: [
      "Presented in the form of a dialogue between Socrates and three different interlocutors, this classic text is an enquiry into the notion of a perfect community and the ideal individual within it. During the conversation, other questions are raised: what is goodness?; what is reality?; and what is knowledge? The Republic also addresses the purpose of education and the role of both women and men as guardians of the people. With remarkable lucidity and deft use of allegory, Plato arrives at a depiction of a state bound by harmony and ruled by philosopher kings"
    ],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523651498/the_repub.jpg"
  )

  Book.create(
    title: "Meditations",
    author_id: marcus.id,
    publisher: "Wisehouse Classics",
    publish_date: "December 7th 2015",
    description: [
      'MEDITATIONS (Medieval Greek: Τὰ εἰς ἑαυτόν Ta eis heauton, literally "to himself") is a series of personal writings by Marcus Aurelius, Roman Emperor from 161 to 180 AD, recording his private notes to himself and ideas on Stoic philosophy.

Marcus Aurelius wrote the 12 books of the Meditations in Koine Greek as a source for his own guidance and self-improvement. It is possible that large portions of the work were written at Sirmium, where he spent much time planning military campaigns from 170 to 180. Some of it was written while he was positioned at Aquincum on campaign in Pannonia, because internal notes tell us that the first book was written when he was campaigning against the Quadi on the river Granova (modern-day Hron) and the second book was written at Carnuntum.

It is unlikely that Marcus Aurelius ever intended the writings to be published and the work has no official title, so Meditations is one of several titles commonly assigned to the collection. These writings take the form of quotations varying in length from one sentence to long paragraphs.'
],
    cover_url: "https://res.cloudinary.com/ddcscckq0/image/upload/v1523651498/meditations.jpg"
  )
  Book.all.each do |book|
    seedUsers.sample(7).each do |user|
      Review.create(book_id: book.id, rating: 1 + rand(5), user_id: user.id, body: Faker::HitchhikersGuideToTheGalaxy.quote)
    end
  end

  Shelf.create(name: "Read", user_id: demo.id)
  Shelf.create(name: "Currently Reading", user_id: demo.id)
  Shelf.create(name: "Want to Read", user_id: demo.id)

  Book.all.sample(16).each do |book|
    Shelving.create(book_id: book.id, shelf_id: demo.shelves.first.id)
  end


#here
