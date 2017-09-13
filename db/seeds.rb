

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

qbs = ['Allen, Brandon',
'Anderson, Derek',
'Beathard, C.J.',
'Bortles, Blake',
'Boykin, Trevone',
'Bradford, Sam',
'Brady, Tom',
'Bray, Tyler',
'Brees, Drew',
'Bridgewater, Teddy',
'Brissett, Jacoby',
'Callahan, Joe',
'Carr, Derek',
'Cassel, Matt',
'Clemens, Kellen',
'Cook, Connor',
'Cousins, Kirk',
'Cutler, Jay',
'Dalton, Andy',
'Daniel, Chase',
'Davis, Austin',
'Dobbs, Joshua',
'Doughty, Brandon',
'Driskel, Jeff',
'Dysert, Zac',
'Ferguson, Tyler',
'Fitzpatrick, Ryan',
'Flacco, Joe',
'Foles, Nick',
'Gabbert, Blaine',
'Garoppolo, Jimmy',
'Gilbert, Garrett',
'Glennon, Mike',
'Goff, Jared',
'Griffin, Ryan',
'Hackenberg, Christian',
'Henne, Chad',
'Hill, Taysom',
'Hogan, Kevin',
'Hoyer, Brian',
'Hundley, Brett',
'Jones, Cardale',
'Jones, Landry',
'Kaaya, Brad',
'Keenum, Case',
'Kelly, Chad',
'Kessler, Cody',
'Kizer, DeShone',
'Knight, Trevor',
'Luck, Andrew',
'Lynch, Paxton',
'Mahomes, Patrick',
'Mallett, Ryan',
'Manning, Eli',
'Mannion, Sean',
'Manuel, E.J.',
'Mariota, Marcus',
'McCarron, A.J.',
'McCown, Josh',
'McCoy, Colt',
'Moore, Kellen',
'Moore, Matt',
'Mullens, Nick',
'Newton, Cam',
'Osweiler, Brock',
'Palmer, Carson',
'Peterman, Nathan',
'Petty, Bryce',
'Prescott, Dak',
'Pryor, Terrelle',
'Rivers, Philip',
'Rodgers, Aaron',
'Roethlisberger, Ben',
'Rudock, Jake',
'Rush, Cooper',
'Ryan, Matt',
'Sanchez, Mark',
'Savage, Tom',
'Schaub, Matt',
'Showers, Jameill',
'Siemian, Trevor',
'Smith, Alex',
'Smith, Geno',
'Stafford, Matthew',
'Stanton, Drew',
'Sudfeld, Nate',
'Tannehill, Ryan',
'Tanney, Alex',
'Taylor, Tyrod',
'Thomas, Logan',
'Tolzien, Scott',
'Torgersen, Alek',
'Trubisky, Mitchell',
'Walker, Phillip',
'Watson, Deshaun',
'Webb, Davis',
'Webb, Joe',
'Wentz, Carson',
'Wilson, Russell',
'Winston, Jameis',
'Yates, T.J.']

qbs.each do |name|
  qb_name = name.split(", ").reverse.join(" ")
  Player.create(name: qb_name, position: "QB")
end

rbs = ['Abdullah, Ameer',
'Ajayi, Jay',
'Allen, Javorius',
'Anderson, C.J.',
'Artis-Payne, Cameron',
'Banyard, Joe',
'Barber, Peyton',
'Bell, Le\'Veon',
'Bernard, Giovani',
'Blount, LeGarrette',
'Blue, Alfred',
'Bohanon, Tommy',
'Bolden, Brandon',
'Booker, Devontae',
'Breida, Matt',
'Brown, Mack',
'Brown, Malcolm',
'Burkhead, Rex',
'Burton, Michael',
'Carson, Chris',
'Carson, Tra',
'Charles, Jamaal',
'Clement, Corey',
'Cohen, Tarik',
'Coleman, Derrick',
'Coleman, Tevin',
'Collins, Alex',
'Conner, James',
'Cook, Dalvin',
'Cook, Tim',
'Crowell, Isaiah',
'Cunningham, Benny',
'Darkwa, Orleans',
'Davis, Justin',
'Davis, Mike',
'Dayes, Matt',
'Develin, James',
'DiMarco, Patrick',
'Dixon, Kenneth',
'Drake, Kenyan',
'Dunbar, Lance',
'Ekeler, Austin',
'Ellington, Andre',
'Elliott, Ezekiel',
'Ervin, Tyler',
'Farrow, Kenneth',
'Fluellen, David',
'Foreman, D\'Onta',
'Forte, Matt',
'Foster, D.J.',
'Fournette, Leonard',
'Fowler, Jalston',
'Freeman, Devonta',
'Gaffney, Tyler',
'Gallman, Wayne',
'Garner, Manasseh',
'Gillislee, Mike',
'Gordon, Melvin',
'Gore, Frank',
'Grant, Corey',
'Gray, MarQueis',
'Green, Tion',
'Gurley, Todd',
'Ham, C.J.',
'Hansbrough, Russell',
'Henderson, De\'Angelo',
'Henry, Derrick',
'Hill, Brian',
'Hill, Bronson',
'Hill, Jeremy',
'Hood, Elijah',
'Howard, Jordan',
'Hunt, Akeem',
'Hunt, Kareem',
'Hyde, Carlos',
'Ingram, Mark',
'Ivory, Chris',
'Jackson, Darius',
'James, Mike',
'Janovich, Andy',
'Johnson, Austin',
'Johnson, David',
'Johnson, Duke',
'Jones, Aaron',
'Jones, Taiwan',
'Judd, Akeem',
'Juszczyk, Kyle',
'Kamara, Alvin',
'Kelley, Rob',
'Kuhn, John',
'Lacy, Eddie',
'Langford, Jeremy',
'Laskey, Zach',
'Lewis, Dion',
'Logan, T.J.',
'Lynch, Marshawn',
'Mack, Marlon',
'Madden, Tre',
'Magee, Terrence',
'Marshall, Byron',
'Marshall, Keith',
'Martin, Doug',
'Mathers, I\'Tavius',
'Mays, Devante',
'McCaffrey, Christian',
'McCoy, LeSean',
'McFadden, Darren',
'McGuire, Elijah',
'McKinnon, Jerick',
'McNichols, Jeremy',
'Michael, Christine',
'Miller, Lamar',
'Mixon, Joe',
'Mizzell, Taquan',
'Morris, Alfred',
'Mostert, Raheem',
'Muhammad, Khalfani',
'Murphy, Marcus',
'Murray, DeMarco',
'Murray, Latavius',
'Nix, Roosevelt',
'Ogunbowale, Dare',
'Olawale, Jamize',
'Oliver, Branden',
'Ortiz, Ricky',
'Peerman, Cedric',
'Penny, Elijhaa',
'Perine, Samaje',
'Perkins, Paul',
'Perry, Senorise',
'Peterson, Adrian',
'Powell, Bilal',
'Pressley, Jhurell',
'Prosch, Jay',
'Prosise, C.J.',
'Pumphrey, Donnel',
'Rawls, Thomas',
'Richard, Jalen',
'Riddick, Theo',
'Ripkowski, Aaron',
'Rodgers, Jacquizz',
'Rogers, Sam',
'Sankey, Bishop',
'Sherman, Anthony',
'Sims, Charles',
'Smallwood, Wendell',
'Smith, De\'Veon',
'Smith, Rod',
'Smith, Shane',
'Spiller, C.J.',
'Sproles, Darren',
'Stewart, Jonathan',
'Summers, James',
'Thomas, De\'Anthony',
'Thompson, Chris',
'Tillery, Lenard',
'Todman, Jordan',
'Tolbert, Mike',
'Toussaint, Fitzgerald',
'Turbin, Robert',
'Vereen, Shane',
'Vitale, Dan',
'Ward, Terron',
'Ware, Spencer',
'Washington, DeAndre',
'Washington, Dwayne',
'Watson, Terrell',
'Watt, Derek',
'West, Charcandrick',
'West, Terrance',
'White, James',
'Whittaker, Fozzy',
'Wilds, Brandon',
'Williams, Andre',
'Williams, Damien',
'Williams, Jamaal',
'Williams, Jarveon',
'Williams, Joe',
'Williams, Jonathan',
'Williams, Kerwynn',
'Williams, Marquez',
'Winn, George',
'Woodhead, Danny',
'Yeldon, T.J.',
'Zenner, Zach']

rbs.each do |name|
  rb_name = name.split(", ").reverse.join(" ")
  Player.create(name: rb_name, position: "RB")
end

wrs = ['Abbrederis, Jared',
'Adams, Davante',
'Adams, Rodney',
'Adeboyejo, Quincy',
'Agholor, Nelson',
'Agudosi, Carlton',
'Aiken, Kamar',
'Allen, Keenan',
'Allison, Geronimo',
'Amendola, Danny',
'Anderson, Dres',
'Anderson, Robby',
'Arnold, Dan',
'Austin, Tavon',
'Ayers, Demarcus',
'Baldwin, Doug',
'Beasley, Cole',
'Beckham Jr., Odell',
'Bellamy, Josh',
'Benjamin, Kelvin',
'Benjamin, Travis',
'Benn, Arrelious',
'Billingsley, Jace',
'Bolden, Victor',
'Bourne, Kendrick',
'Boyd, Tyler',
'Bray, Quan',
'Britt, Kenny',
'Brown, Antonio',
'Brown, Daniel',
'Brown, Fred',
'Brown, Jaron',
'Brown, John',
'Brown, Noah',
'Bryant, Dez',
'Bryant, Martavis',
'Bundy, Marquis',
'Burbridge, Aaron',
'Burse, Isaiah',
'Burton, Deante',
'Butler, Brice',
'Butler, Jeremy',
'Byrd, Damiere',
'Campanaro, Michael',
'Carr, Austin',
'Carrier, Derek',
'Carroo, Leonte',
'Carter, DeAndre',
'Chesson, Jehu',
'Clark, Michael',
'Clay, Kaelin',
'Coates, Sammie',
'Cobb, Randall',
'Cole, Keelan',
'Coleman, Brandon',
'Coleman, Corey',
'Coley, Stacy',
'Conley, Chris',
'Cooks, Brandin',
'Cooper, Amari',
'Cooper, Pharoh',
'Core, Cody',
'Crabtree, Michael',
'Crowder, Jamison',
'Darboh, Amara',
'Davis, Corey',
'Davis, Geremy',
'Davis, Reggie',
'Davis, Robert',
'Davis, Trevor',
'Decker, Eric',
'DePaola, Andrew',
'Devalve, Seth',
'Dieter, Gehrig',
'Diggs, Stefon',
'Doctson, Josh',
'Dorsett, Phillip',
'Douglas, Harry',
'Dural, Travin',
'Edelman, Julian',
'Ellington, Bruce',
'Enunwa, Quincy',
'Erickson, Alex',
'Etta-Tawo, Amba',
'Evans, Mike',
'Fitzgerald, Larry',
'Floyd, Michael',
'Ford, Dontez',
'Ford, Isaiah',
'Fowler, Bennie',
'Frazier, Mose',
'Fuller, Corey',
'Fuller, Devin',
'Fuller, Will',
'Funchess, Devin',
'Gabriel, Taylor',
'Garcon, Pierre',
'Garrett, Keyarris',
'Gentry, Tanner',
'Gibson, Shelton',
'Ginn Jr., Ted',
'Godwin, Chris',
'Golden, Brittan',
'Golladay, Kenny',
'Goodwin, C.J.',
'Goodwin, Marquise',
'Grant, Jakeem',
'Grant, Ryan',
'Gray, Deante\'',
'Green, A.J.',
'Greene, Rashad',
'Hall, Marvin',
'Hansen, Chad',
'Hardee, Justin',
'Hardy, Justin',
'Harris, Dwayne',
'Harris, Maurice',
'Hatcher, Keon',
'Hazel, Matt',
'Henderson, Carlos',
'Heyward-Bey, Darrius',
'Higgins, Rashard',
'Hill, Tyreek',
'Hilton, T.Y.',
'Hogan, Chris',
'Hogan, Krishawn',
'Hollins, Mack',
'Hollister, Cody',
'Holmes, Andre',
'Holton, Johnny',
'Hopkins, DeAndre',
'Humphries, Adam',
'Hunter, Justin',
'Hurns, Allen',
'Inman, Dontrelle',
'Jackson, DeSean',
'Janis, Jeff',
'Jeffery, Alshon',
'Jennings, Darius',
'Johnson, B.J.',
'Johnson, Charles',
'Johnson, Keeon',
'Johnson, Marcus',
'Jones, Andy',
'Jones, Cayleb',
'Jones, Julio',
'Jones, Marvin',
'Jones, TJ',
'Jones, Zay',
'Kearse, Jermaine',
'Kemp, Marcus',
'Kerley, Jeremy',
'King, Tavarres',
'Kumerow, Jake',
'Kupp, Cooper',
'LaFell, Brandon',
'Landry, Jarvis',
'Latimer, Cody',
'Lawler, Kenny',
'Lee, Marqise',
'Lenoir, Lance',
'Lewis, Malcolm',
'Lewis, Roger',
'Lewis, Tommylee',
'Lippett, Tony',
'Lockett, Tyler',
'Louis, Ricardo',
'Maclin, Jeremy',
'Malone, Josh',
'Marquez, Bradley',
'Marshall, Brandon',
'Marshall, Jalin',
'Martino, Freddie',
'Matthews, Chris',
'Matthews, Jordan',
'Matthews, Rishard',
'Mayle, Vince',
'McBride, Tre',
'McCaffrey, Max',
'McCarron, Riley',
'McEvoy, Tanner',
'McKenzie, Isaiah',
'McKissic, J.D.',
'McRoberts, Paul',
'Meredith, Cameron',
'Miller, Braxton',
'Mitchell, Malcolm',
'Moncrief, Donte',
'Montgomery, Ty',
'Moore, Chris',
'Moore, David',
'Morgan, Drew',
'Natson, JoJo',
'Nelson, J.J.',
'Nelson, Jordy',
'Norwood, Kevin',
'Parker, DeVante',
'Pascal, Zach',
'Patterson, Cordarrelle',
'Patton, Andre',
'Paul, Niles',
'Peake, Charone',
'Perriman, Breshad',
'Powell, Walter',
'Pryor, Terrelle',
'Quick, Brian',
'Randle, Rueben',
'Raymond, Khalif',
'Reedy, Bernard',
'Reilly, Brandon',
'Reynolds, Josh',
'Richardson, Paul',
'Roberts, Andre',
'Roberts, Seth',
'Robinson, Aldrick',
'Robinson, Allen',
'Robinson, Demarcus',
'Rogers, Chester',
'Rogers, Eli',
'Ross, Fred',
'Ross, John',
'Rudolph, Travis',
'Samuel, Curtis',
'Sanders, Emmanuel',
'Sanu, Mohamed',
'Scott, Artavis',
'Scott, Rashawn',
'Seales, Jhajuan',
'Sharp, Hunter',
'Sharpe, Tajae',
'Shelton, R.J.',
'Shepard, Russell',
'Shepard, Sterling',
'Shorts, Daikiel',
'Sinkfield, Terrell',
'Slater, Matt',
'Sloter, Kyle',
'Smelter, DeAndre',
'Smith, Devin',
'Smith, Torrey',
'Smith-Schuster, JuJu',
'Snead, Willie',
'Sterling, Neal',
'Stewart, ArDarius',
'Stills, Kenny',
'Stringfellow, Damore\'ea',
'Strong, Jaelen',
'Switzer, Ryan',
'Tate, Brandon',
'Tate, Golden',
'Taylor, Jordan',
'Taylor, Taywan',
'Taylor, Trent',
'Thielen, Adam',
'Thomas, Demaryius',
'Thomas, Justin',
'Thomas, Michael',
'Thomas, Mike',
'Thomas, Noel',
'Thompson, Chris',
'Thompson, Deonte',
'Treadwell, Laquon',
'Treggs, Bryce',
'Tucker, Marcus',
'Wallace, Mike',
'Waller, Darren',
'Ward, Greg',
'Watkins, Sammy',
'Weems, Eric',
'Westbrook, Dede',
'Wheaton, Markus',
'White, Kevin',
'White, Tim',
'Whitfield, Kermit',
'Whitney, Isaac',
'Williams, Chad',
'Williams, Dominique',
'Williams, Kasen',
'Williams, Mike',
'Williams, Nick',
'Williams, Teddy',
'Williams, Terrance',
'Williams, Tyrell',
'Wilson, Albert',
'Wilson, Jesus',
'Woods, Robert',
'Wright, Jarius',
'Wright, Kendall',
'Wynn, Shane',
'Yancey, DeAngelo',]

wrs.each do |name|
  wr_name = name.split(", ").reverse.join(" ")
  Player.create(name: wr_name, position: "WR")
end

tes = ['Adams, Jerell',
'Allen, Dwayne',
'Anderson, Stephen',
'Auclair, Antony',
'Baylis, Evan',
'Bell, Blake',
'Bennett, Martellus',
'Bowman, Braedon',
'Boyle, Nick',
'Brate, Cameron',
'Braunecker, Ben',
'Brinkley, Beau',
'Brown, Billy',
'Brown, Pharaoh',
'Burton, Trey',
'Butt, Jake',
'Carter, Cethan',
'Carter, Kyle',
'Celek, Brent',
'Celek, Garrett',
'Charles, Orson',
'Clay, Charles',
'Cleveland, Asante',
'Cook, Jared',
'Cross, Alan',
'Culkin, Sean',
'Daniels, Darrell',
'Davis, Vernon',
'Derby, A.J.',
'Dickson, Ed',
'Doyle, Jack',
'Duarte, Thomas',
'Ebron, Eric',
'Edmunds, Trey',
'Eifert, Tyler',
'Ellison, Rhett',
'Engram, Evan',
'Ertz, Zach',
'Everett, Gerald',
'Fant, George',
'Fasano, Anthony',
'Fells, Darren',
'Fiedorowicz, C.J.',
'Fleener, Coby',
'Gates, Antonio',
'Gathers, Rico',
'Gillmore, Crockett',
'Gordon, Dillon',
'Gragg, Chris',
'Graham, Jimmy',
'Gray, Alex',
'Green, Virgil',
'Gresham, Jermaine',
'Griffin, Garrett',
'Griffin, Ryan',
'Grimble, Xavier',
'Grinnage, David',
'Gronkowski, Rob',
'Hanna, James',
'Harbor, Clay',
'Harris, Clark',
'Harris, Demetrius',
'Hemingway, Temarrick',
'Henry, Hunter',
'Heuerman, Jeff',
'Hewitt, Ryan',
'Higbee, Tyler',
'Hikutini, Cole',
'Hill, Josh',
'Hodges, Bucky',
'Hollister, Jacob',
'Holtz, J.P.',
'Hoomanawanui, Michael',
'Hooper, Austin',
'Howard, O.J.',
'James, Jesse',
'Jarwin, Blake',
'Kelce, Travis',
'Kendricks, Lance',
'Kittle, George',
'Koyack, Ben',
'Krieger Coble, Henry',
'Kroft, Tyler',
'LaCosse, Matt',
'Lang, Cedrick',
'Lee, Khari',
'Leggett, Jordan',
'Lengel, Matt',
'Lewis, Marcedes',
'Malleck, Ryan',
'Manhertz, Chris',
'McDermott, Kevin',
'McDonald, Vance',
'McGee, Jake',
'McGrath, Sean',
'Miller, Zach',
'Momah, Ifeanyi',
'Morgan, David',
'Mundt, John',
'Niklas, Troy',
'Njoku, David',
'O\'Leary, Nick',
'O\'Shaughnessy, James',
'Olsen, Greg',
'Ott, Tyler',
'Paulsen, Logan',
'Perkins, Joshua',
'Pruitt, MyCole',
'Reed, Jordan',
'Rivera, Mychal',
'Roberts, Michael',
'Rodgers, Richard',
'Rudolph, Kyle',
'Saubert, Eric',
'Schreck, Mason',
'Seals-Jones, Ricky',
'Seferian-Jenkins, Austin',
'Semisch, Tim',
'Shaheen, Adam',
'Simonson, Scott',
'Sims, Dion',
'Smith, Jonnu',
'Smith, Lee',
'Sprinkle, Jeremy',
'Stocker, Luke',
'Supernaw, Phillip',
'Swaim, Geoff',
'Swoope, Erik',
'Swoopes, Tyrone',
'Telfer, Randall',
'Thomas, Julius',
'Toilolo, Levine',
'Tomlinson, Eric',
'Towbridge, Keith',
'Travis, Ross',
'Traylor, Austin',
'Tye, Will',
'Uzomah, C.J.',
'Valles, Hakeem',
'Vannett, Nick',
'Walford, Clive',
'Walker, Delanie',
'Watson, Benjamin',
'Williams, Brandon',
'Williams, Maxx',
'Willson, Luke',
'Wilson, Travis',
'Witten, Jason']

tes.each do |name|
  te_name = name.split(", ").reverse.join(" ")
  Player.create(name: te_name, position: "TE")
end

ks = ['Barth, Connor',
'Boswell, Chris',
'Bryant, Matt',
'Bullock, Randy',
'Butker, Harrison',
'Catanzaro, Chandler',
'Crosby, Mason',
'Dawson, Phil',
'Elliott, Jake',
'Fairbairn, Ka\'imi',
'Folk, Nick',
'Forbath, Kai',
'Gano, Graham',
'Gonzalez, Zane',
'Gostkowski, Stephen',
'Gould, Robbie',
'Hauschka, Stephen',
'Hopkins, Dustin',
'Janikowski, Sebastian',
'Koo, Younghoe',
'Lutz, Wil',
'McManus, Brandon',
'Myers, Jason',
'Parkey, Cody',
'Prater, Matt',
'Rosas, Aldrick',
'Santos, Cairo',
'Sturgis, Caleb',
'Succop, Ryan',
'Tavecchio, Giorgio',
'Tucker, Justin',
'Vinatieri, Adam',
'Walsh, Blair',
'Zuerlein, Greg']

ks.each do |name|
  k_name = name.split(", ").reverse.join(" ")
  Player.create(name: k_name, position: "K")
end

# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# gino = User.create(username: "Eugene",password_digest: "Turtles")
# pep = User.create(username: "Natalie",password_digest: "Patriots")
# bobby = User.create(username: "Bobby", password_digest: "Apples")
# marco = User.create(username: "Marco", password_digest: "Broncos")
# jen = User.create(username: "Jen", password_digest: "Password")
#
#
# league1 = League.create(name: "The League", owner: pep)
#
# ginos_giants = Team.create(name: "Ginos Giants", user: gino, league: league1)
# peppy_pats = Team.create(name: "Peppy Pats", user: pep, league: league1)
#
# Player.create(name: "Tom Brady", position: "QB")
# Player.create(name: "Aaron Rogers", position: "QB")
# Player.create(name: "Odell Beckham Jr.", position: "WR")
# Player.create(name: "Adrian Peterson", position: "RB")
# Player.create(name: "Evan Engram", position: "TE")
# Player.create(name: "Darren Sproles", position: "F")
# Player.create(name: "Sebastian Janikowski", position: "K")
# Player.create(name: "Jamal Charles", position: "RB")
# Player.create(name: "Julio Jones", position: "WR")
# Player.create(name: "Jimmy Graham", position: "TE")
#
# draft1 = Draft.create(draft_time: Time.now, league: league1)
#
# transaction1 = Transaction.create(player: brady, team: peppy_pats, draft: draft1)
# transaction2 = Transaction.create(player: aaron, team: ginos_giants, draft: draft1)
# transaction3 = Transaction.create(player: obj, team: ginos_giants, draft: draft1)