# Movie data
movies_data = [
  { title: "Inglourious Basterds", protagonist: "Brad Pitt", synopsis: "In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner's vengeful plans for the same.", director: "Quentin Tarantino", year: 2009 },
	{ title: "The Dark Knight Rises", protagonist: "Christian Bale", synopsis: "Eight years after the Joker's reign of anarchy, Batman, now a fugitive, must accept the help of a mysterious cat burglar and a cunning police officer to save Gotham City from destruction.", director: "Christopher Nolan", year: 2012 },
	{ title: "The Shawshank Redemption", protagonist: "Tim Robbins", synopsis: "Two imprisoned men bond over several years, finding solace and eventual redemption through acts of common decency.", director: "Frank Darabont", year: 1994 },
	{ title: "Gladiator", protagonist: "Russell Crowe", synopsis: "A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.", director: "Ridley Scott", year: 2000 },
	{ title: "The Departed", protagonist: "Leonardo DiCaprio", synopsis: "An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.", director: "Martin Scorsese", year: 2006 },
	{ title: "The Matrix", protagonist: "Keanu Reeves", synopsis: "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.", director: "Lana Wachowski, Lilly Wachowski", year: 1999 },
	{ title: "Interstellar", protagonist: "Matthew McConaughey", synopsis: "A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.", director: "Christopher Nolan", year: 2014 },
	{ title: "Forrest Gump", protagonist: "Tom Hanks", synopsis: "The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75.", director: "Robert Zemeckis", year: 1994 },
	{ title: "The Lion King", protagonist: "Matthew Broderick", synopsis: "Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.", director: "Roger Allers, Rob Minkoff", year: 1994 },
	{ title: "Inception", protagonist: "Leonardo DiCaprio", synopsis: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.", director: "Christopher Nolan", year: 2010 },
	{ title: "The Lord of the Rings: The Return of the King", protagonist: "Elijah Wood", synopsis: "Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.", director: "Peter Jackson", year: 2003 },
	{ title: "Pulp Fiction", protagonist: "John Travolta", synopsis: "The lives of two mob hitmen, a boxer, a gangster's wife, and a pair of diner bandits intertwine in four tales of violence and redemption.", director: "Quentin Tarantino", year: 1994 },
	{ title: "The Godfather", protagonist: "Marlon Brando", synopsis: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.", director: "Francis Ford Coppola", year: 1972 },
	{ title: "The Silence of the Lambs", protagonist: "Jodie Foster", synopsis: "A young FBI cadet must confide in an incarcerated and manipulative killer to receive his help on catching another serial killer who skins his victims.", director: "Jonathan Demme", year: 1991 },
	{ title: "The Dark Knight", protagonist: "Christian Bale", synopsis: "When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.", director: "Christopher Nolan", year: 2008 },
	{ title: "The Great Gatsby", protagonist: "Leonardo DiCaprio", synopsis: "A writer and wall street trader, Nick, finds himself drawn to the past and lifestyle of his millionaire neighbor, Jay Gatsby.", director: "Baz Luhrmann", year: 2013 },
	{ title: "The Revenant", protagonist: "Leonardo DiCaprio", synopsis: "A frontiersman on a fur trading expedition in the 1820s fights for survival after being mauled by a bear and left for dead by members of his own hunting team.", director: "Alejandro GonzÃ¡lez IÃ±Ã¡rritu", year: 2015 },
	{ title: "The Prestige", protagonist: "Hugh Jackman", synopsis: "After a tragic accident, two stage magicians engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.", director: "Christopher Nolan", year: 2006 },
	{ title: "Django Unchained", protagonist: "Jamie Foxx", synopsis: "With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.", director: "Quentin Tarantino", year: 2012 },
	{ title: "Schindler's List", protagonist: "Liam Neeson", synopsis: "In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce and takes extraordinary measures to save them.", director: "Steven Spielberg", year: 1993 },
	{ title: "The Green Mile", protagonist: "Tom Hanks", synopsis: "The lives of guards on Death Row are affected by one of their charges, a gentle giant condemned to die for a crime he did not commit.", director: "Frank Darabont", year: 1999 },
	{ title: "The Wolf of Wall Street", protagonist: "Leonardo DiCaprio", synopsis: "Based on the true story of Jordan Belfort, from his rise to a wealthy stockbroker living the high life to his fall involving crime, corruption, and the federal government.", director: "Martin Scorsese", year: 2013 },
	{ title: "Whiplash", protagonist: "Miles Teller", synopsis: "A young drummer enrolls in a cutthroat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student's potential.", director: "Damien Chazelle", year: 2014 },
	{ title: "The Departed", protagonist: "Leonardo DiCaprio", synopsis: "An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.", director: "Martin Scorsese", year: 2006 },
	{ title: "The Pianist", protagonist: "Adrien Brody", synopsis: "A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto during World War II.", director: "Roman Polanski", year: 2002 },
	{ title: "Goodfellas", protagonist: "Robert De Niro", synopsis: "The rise and fall of a mafia associate, following his life from childhood to becoming a powerful member of a New York crime family.", director: "Martin Scorsese", year: 1990 },
	{ title: "The Social Network", protagonist: "Jesse Eisenberg", synopsis: "Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook but is later sued by two brothers who claimed he stole their idea, and the co-founder who was later squeezed out of the business.", director: "David Fincher", year: 2010 },
	{ title: "The Departed", protagonist: "Leonardo DiCaprio", synopsis: "An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.", director: "Martin Scorsese", year: 2006 },
	{ title: "Jurassic Park", protagonist: "Sam Neill", synopsis: "During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.", director: "Steven Spielberg", year: 1993 },
	{ title: "The Avengers", protagonist: "Robert Downey Jr.", synopsis: "Earth's mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.", director: "Joss Whedon", year: 2012 },
	{ title: "The Shining", protagonist: "Jack Nicholson", synopsis: "A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.", director: "Stanley Kubrick", year: 1980 },
	{ title: "Star Wars: Episode IV - A New Hope", protagonist: "Mark Hamill", synopsis: "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee, and two droids to save the galaxy from the Empire's world-destroying battle station while also attempting to rescue Princess Leia from the mysterious Darth Vader.", director: "George Lucas", year: 1977 },
	{ title: "The Avengers", protagonist: "Robert Downey Jr.", synopsis: "Earth's mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.", director: "Joss Whedon", year: 2012 },
	{ title: "The Terminator", protagonist: "Arnold Schwarzenegger", synopsis: "A human soldier is sent from 2029 to 1984 to stop an almost indestructible cyborg killing machine, sent from the same year, which has been programmed to execute a young woman whose unborn son is the key to humanity's future salvation.", director: "James Cameron", year: 1984 },
	{ title: "The Lion King", protagonist: "Donald Glover", synopsis: "After the murder of his father, a young lion prince flees his kingdom only to learn the true meaning of responsibility and bravery.", director: "Jon Favreau", year: 2019 },
	{ title: "The Social Network", protagonist: "Jesse Eisenberg", synopsis: "Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook but is later sued by two brothers who claimed he stole their idea, and the co-founder who was later squeezed out of the business.", director: "David Fincher", year: 2010 },
	{ title: "Jurassic Park", protagonist: "Sam Neill", synopsis: "During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.", director: "Steven Spielberg", year: 1993 },
	{ title: "The Avengers", protagonist: "Robert Downey Jr.", synopsis: "Earth's mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.", director: "Joss Whedon", year: 2012 },
	{ title: "The Shining", protagonist: "Jack Nicholson", synopsis: "A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.", director: "Stanley Kubrick", year: 1980 },
	{ title: "Star Wars: Episode IV - A New Hope", protagonist: "Mark Hamill", synopsis: "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee, and two droids to save the galaxy from the Empire's world-destroying battle station while also attempting to rescue Princess Leia from the mysterious Darth Vader.", director: "George Lucas", year: 1977 },
	{ title: "The Terminator", protagonist: "Arnold Schwarzenegger", synopsis: "A human soldier is sent from 2029 to 1984 to stop an almost indestructible cyborg killing machine, sent from the same year, which has been programmed to execute a young woman whose unborn son is the key to humanity's future salvation.", director: "James Cameron", year: 1984 }
]

# Create movies
movies_data.each do |movie_data|
  Movie.create!(movie_data)
end

# Create clients
80.times do
  Client.create(
    name: Faker::Name.name,
    address: Faker::Address.full_address,
    phone: Faker::PhoneNumber.cell_phone,
    email: Faker::Internet.email
  )
end  