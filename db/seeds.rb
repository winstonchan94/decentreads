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

demo = User.create(name: "demo", email: "demo", password: "password")
pierce_brown = User.create(name: "Pierce Brown", email: "pierce_brown@piercebrown.com", password: "password")
tolkien = User.create(name: "J.R.R. Tolkien", email: "tolkien@tolkien.com", password: "password")
rowling = User.create(name: "J.K. Rowling", email: "rowling@rowling.com", password: "password")
# books


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

  demo_shelf = Shelf.create(user_id: demo.id, name: "demo shelf")

  Book.all.each do |book|
    Shelving.create(book_id: book.id, shelf_id: demo.shelves.first.id)
  end

#here
