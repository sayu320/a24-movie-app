import 'package:flutter/material.dart';

class A24Description {
  final int id;
  final String image;
  final String name;
  final String genre;
  final String overView;
  final String director;
  final String actors;
  final Widget? page;

  A24Description(
      {required this.id,
      required this.image,
      required this.name,
      required this.genre,
      required this.overView,
      required this.director,
      required this.actors,
      this.page});
}

List<A24Description> moviesAndShows = [
  A24Description(
    id: 0,
    image: 'lib/assets/a ghost story.jpg',
    name: 'A Ghost Story(2017)',
    genre: 'Drama,Fantasy',
    overView:
        'Recently deceased, a white-sheeted ghost returns to his suburban home to console his bereft wife, only to find that in his spectral state he has become unstuck in time, forced to watch passively as the life he knew and the woman he loves slowly slip away.',
    director: 'Directed by David Lowery',
    actors: 'Starring Rooney Mara,Cassey Affleck',
   //page
  ),

  A24Description(
    id: 1,
    image: 'lib/assets/Aftersun movie posters.jpg',
    name: 'Aftersun(2022)',
    genre: 'Drama',
    overView:
        "Sophie reflects on the shared joy and private melancholy of a holiday she took with her father twenty years earlier. Memories real and imagined fill the gaps between miniDV footage as she tries to reconcile the father she knew with the man she didn't",
    director: 'Directed by Charlotte Wells',
    actors: 'Starring Paul Mescal,Frankie Corio',
   //page
  ),

   A24Description(
    id: 2,
    image: 'lib/assets/EEAAO.jpg',
    name: 'Everything Everywhere All at Once(2022)',
    genre: 'Action,Adventure,Science Fiction',
    overView:
        "An aging Chinese immigrant is swept up in an insane adventure, where she alone can save what's important to her by connecting with the lives she could have led in other universes.",
    director: 'Directed by The Daniels',
    actors: 'Starring Michelle Yeoh,Stephanie Hsu',
   //page
  ),

   A24Description(
    id: 3,
    image: 'lib/assets/enemy.jpg',
    name: 'Enemy(2014)',
    genre: 'Thriller,Mistery',
    overView:
        "A mild-mannered college professor discovers a look-alike actor and delves into the other man's private affairs.",
    director: 'Directed by Denis Villeneuve',
    actors: 'Starring Jake Gyllenhaal,Mélanie Laurent',
   //page
  ),

  A24Description(
    id: 4,
    image: 'lib/assets/exmachina.jpg',
    name: 'Ex Machina(2015)',
    genre: 'Drama,Science Fiction',
    overView:
        "Ex Machina follows a programmer testing an advanced AI, exploring themes of consciousness, manipulation, and ethical dilemmas in seclusion.",
    director: 'Directed by Alex Garland',
    actors: 'Starring Oscar Isaac,Domhnall Gleeson,Alicia Vikander',
   //page
  ),

   A24Description(
    id: 5,
    image: 'lib/assets/First Reformed.jpg',
    name: 'First Reformed(2018)',
    genre: 'Drama',
    overView:
        "A pastor of a small church in upstate New York starts to spiral out of control after a soul-shaking encounter with an unstable environmental activist and his pregnant wife.",
    director: 'Directed by Paul Schrader',
    actors: 'Starring Ethan Hawke,Amanda Seyfried',
   //page
  ),

   A24Description(
    id: 6,
    image: 'lib/assets/Hereditary.jpg',
    name: 'Hereditary(2018)',
    genre: 'Horror,Mystery,Thriller',
    overView:
        "When Ellen, the matriarch of the Graham family, passes away, her daughter's family begins to unravel cryptic and increasingly terrifying secrets about their ancestry.",
    director: 'Directed by Ari Aster',
    actors: 'Starring Tony Collete,Alex Wolff',
   //page
  ),  

   A24Description(
    id: 7,
    image: 'lib/assets/LAMB.jpg',
    name: 'Lamb(2021)',
    genre: 'Drama,Fantasy,Horror',
    overView:
        "Lamb depicts a couple raising a half-lamb, half-human child, blurring lines of parenthood, nature, and identity in rural Iceland.",
    director: 'Directed by Valdimar Jóhannsson',
    actors: 'Starring Noomi Rapace',
   //page
  ),

   A24Description(
    id: 8,
    image: 'lib/assets/lighthouse.jpg',
    name: 'The Lighthouse(2019)',
    genre: 'Drama,Fantasy,Thriller',
    overView:
        "Two lighthouse keepers try to maintain their sanity while living on a remote and mysterious New England island in the 1890s.",
    director: 'Directed by Robert Eggers',
    actors: 'Starring William Daffeo, Robert Pattinson',
   //page
  ),

    A24Description(
    id: 9,
    image: 'lib/assets/Locke.jpg',
    name: 'Locke(2014)',
    genre: 'Drama,Thriller',
    overView:
        "Locke is a drama film starring Tom Hardy, unfolding entirely in a car as a man juggles personal and professional crises.",
    director: 'Directed by Steven Knight',
    actors: 'Starring Tom Hardy',
   //page
  ),
  
   A24Description(
    id: 10,
    image: 'lib/assets/midsommar.jpg',
    name: 'Midsommar(2019)',
    genre: 'Horror,Drama,Mystery',
    overView:
        "A group of friends visits a remote Swedish village, experiencing disturbing rituals during a summer solstice festival.",
    director: 'Directed by Ari Aster',
    actors: 'Starring Florence Pugh',
   //page
  ),

   A24Description(
    id: 11,
    image: 'lib/assets/Moonlight.jpg',
    name: 'Moonlight(2016)',
    genre: 'Drama',
    overView:
        "A coming-of-age drama explores the life of a young black man in Miami, grappling with identity and sexuality.",
    director: 'Directed by Barry Jenkins',
    actors: 'Starring Mahershala Ali, Naomi Harris',
   //page
  ),

   A24Description(
    id: 12,
    image: 'lib/assets/swiss army man.jpg',
    name: 'Swiss Army Man(2016)',
    genre: 'Drama,Fantasy',
    overView:
        "A stranded man befriends a flatulent corpse, embarking on an eccentric and surreal journey of self-discovery.",
    director: 'Directed by The Daniels',
    actors: 'Starring Paul Dano,Daniel Radcliffe',
   //page
  ),

   A24Description(
    id: 13,
    image: 'lib/assets/The Green Knight.jpg',
    name: 'The Green Knight(2021)',
    genre: 'Drama,Fantasy',
    overView:
        "A medieval fantasy film follows Sir Gawain's quest to confront an enigmatic figure, testing his courage and honor.",
    director: 'Directed by Davil Lowery',
    actors: 'Starring Dev Patel,Alicia Wikendar',
   //page
  ),

    A24Description(
    id: 14,
    image: 'lib/assets/the killing of a sacred deer poster.jpg',
    name: 'The Killing of a Sacred Deer(2017)',
    genre: 'Drama,Thriller,Mystery',
    overView:
        "A psychological thriller portrays a surgeon's life unraveling when he's faced with a mysterious boy's unsettling demands and consequences.",
    director: 'Directed by Yorgos Lanthimos',
    actors: 'Starring Colin Farrell,Nicole Kidman,Barrey Keoghan',
   //page
  ),

    A24Description(
    id: 15,
    image: 'lib/assets/The Lobster.jpg',
    name: 'The Lobster(2015)',
    genre: 'Drama,Romance,Comedy',
    overView:
        "A dystopian comedy-drama where single people must find a partner in 45 days or risk being transformed into an animal.",
    director: 'Directed by Yorgos Lanthimos',
    actors: 'Starring Colin Farrell,Rachel Weisz,Léa Seydoux',
   //page
  ),

   A24Description(
    id: 16,
    image: 'lib/assets/The Witch.jpg',
    name: 'The Witch(2015)',
    genre: 'Drama,Horror,Mystery',
    overView:
        "A horror film set in 1630s New England follows a Puritan family encountering malevolent forces in the wilderness.",
    director: 'Directed by Robert Eggers',
    actors: 'Starring Anya Taylor-Joy',
   //page
  ),

    A24Description(
    id: 17,
    image: 'lib/assets/Uncut Gems.jpg',
    name: 'Uncut Gems(2019)',
    genre: 'Drama,Thriller,Crime',
    overView:
        "A frenetic thriller follows a New York City jeweler's high-stakes gambling addiction and chaotic pursuit of a valuable gemstone.",
    director: 'Directed by Safdie Brothers',
    actors: 'Starring Adam Sandler',
   //page
  ),

  A24Description(
    id: 18,
    image: 'lib/assets/Under the silver lake.jpg',
    name: 'Under the Silver Lake(2018)',
    genre: 'Drama,Mystery,Crime',
    overView:
        "A neo-noir mystery follows a man's obsessive quest through Los Angeles after his mysterious neighbor disappears.",
    director: 'Directed by David Robert Mitchell',
    actors: 'Starring Andrew Garfield',
   //page
  ),

  A24Description(
    id: 19,
    image: 'lib/assets/Under the Skin.jpg',
    name: 'Under the Skin(2014)',
    genre: 'Drama,Science-fiction',
    overView:
    "A seductive stranger prowls the streets of Glasgow in search of prey: unsuspecting men who fall under her spell.",
    director: 'Directed by Jonathan Glazer',
    actors: 'Starring Scarlet Johnson',
   //page
  ),

   A24Description(
    id: 20,
    image: 'lib/assets/whale.jpg',
    name: 'The Whale(2022)',
    genre: 'Drama',
    overView:
        "A reclusive English teacher suffering from severe obesity attempts to reconnect with his estranged teenage daughter for one last chance at redemption.",
    director: 'Directed by Darren Aranofsky',
    actors: 'Starring Brendan Fraser,Sadie Sink',
   //page
  ),

  A24Description(
    id: 21,
    image: 'lib/assets/beef poster.jpg',
    name: 'Beef(2023)',
    genre: 'Comedy,Drama',
    overView:
        "A road rage incident between two strangers — a failing contractor and an unfulfilled entrepreneur — sparks a feud that brings out their darkest impulses.",
    director: 'Directed by Lee Sung-jin',
    actors: 'Starring Steven Yeun,Ali Wong',
   //page
  ),

  A24Description(
    id: 22,
    image: 'lib/assets/euphoria poster.jpg',
    name: 'Euphoria(2019)',
    genre: 'Drama',
    overView:
        "A group of high school students navigate love and friendships in a world of drugs, sex, trauma, and social media.",
    director: 'Directed by Sam Levinson',
    actors: 'Starring Zendaya',
   //page
  ),

   A24Description(
    id: 23,
    image: 'lib/assets/idol tvshow.jpg',
    name: 'The Idol(2023)',
    genre: 'Drama',
    overView:
        "After a breakdown, Jocelyn aims to reclaim her pop star status. Romance with nightclub impresario Tedros ignites her journey's direction.",
    director: 'Directed by Sam Levinson',
    actors: 'Starring The Weeknd,Lily-Rose Depp',
   //page
  ),

  A24Description(
    id: 24,
    image: 'lib/assets/ramy tvshow.jpg',
    name: 'Ramy(2019)',
    genre: 'Drama',
    overView:
        "A comedy-drama series follows a first-generation Egyptian-American navigating life, love, and faith in New Jersey.",
    director: 'Directed by Ramy Youssef',
    actors: 'Starring Ramy Youssef',
   //page
  ),

   A24Description(
    id: 25,
    image: 'lib/assets/the hazbin hotel tvshow.jpg',
    name: 'Hazbin Hotel(2024)',
    genre: 'Action,Sci-fi & Fantasy',
    overView:
        "In attempt to find a non-violent alternative for reducing Hell's overpopulation, the daughter of Lucifer opens a rehabilitation hotel that offers a group of misfit demons a chance at redemption.",
    director: 'Directed by Vivienne Medrano',
    actors: 'Starring Erika Henningsen',
   //page
  ),
];

List<A24Description> a24movies =[
  A24Description(
    id: 0,
    image: 'lib/assets/a ghost story.jpg',
    name: 'A Ghost Story(2017)',
    genre: 'Drama,Fantasy',
    overView:
        'Recently deceased, a white-sheeted ghost returns to his suburban home to console his bereft wife, only to find that in his spectral state he has become unstuck in time, forced to watch passively as the life he knew and the woman he loves slowly slip away.',
    director: 'Directed by David Lowery',
    actors: 'Starring Rooney Mara,Cassey Affleck',
   //page
  ),

  A24Description(
    id: 1,
    image: 'lib/assets/Aftersun movie posters.jpg',
    name: 'Aftersun(2022)',
    genre: 'Drama',
    overView:
        "Sophie reflects on the shared joy and private melancholy of a holiday she took with her father twenty years earlier. Memories real and imagined fill the gaps between miniDV footage as she tries to reconcile the father she knew with the man she didn't",
    director: 'Directed by Charlotte Wells',
    actors: 'Starring Paul Mescal,Frankie Corio',
   //page
  ),

   A24Description(
    id: 2,
    image: 'lib/assets/EEAAO.jpg',
    name: 'Everything Everywhere All at Once(2022)',
    genre: 'Action,Adventure,Science Fiction',
    overView:
        "An aging Chinese immigrant is swept up in an insane adventure, where she alone can save what's important to her by connecting with the lives she could have led in other universes.",
    director: 'Directed by The Daniels',
    actors: 'Starring Michelle Yeoh,Stephanie Hsu',
   //page
  ),

   A24Description(
    id: 3,
    image: 'lib/assets/enemy.jpg',
    name: 'Enemy(2014)',
    genre: 'Thriller,Mistery',
    overView:
        "A mild-mannered college professor discovers a look-alike actor and delves into the other man's private affairs.",
    director: 'Directed by Denis Villeneuve',
    actors: 'Starring Jake Gyllenhaal,Mélanie Laurent',
   //page
  ),

  A24Description(
    id: 4,
    image: 'lib/assets/exmachina.jpg',
    name: 'Ex Machina(2015)',
    genre: 'Drama,Science Fiction',
    overView:
        "Ex Machina follows a programmer testing an advanced AI, exploring themes of consciousness, manipulation, and ethical dilemmas in seclusion.",
    director: 'Directed by Alex Garland',
    actors: 'Starring Oscar Isaac,Domhnall Gleeson,Alicia Vikander',
   //page
  ),

   A24Description(
    id: 5,
    image: 'lib/assets/First Reformed.jpg',
    name: 'First Reformed(2018)',
    genre: 'Drama',
    overView:
        "A pastor of a small church in upstate New York starts to spiral out of control after a soul-shaking encounter with an unstable environmental activist and his pregnant wife.",
    director: 'Directed by Paul Schrader',
    actors: 'Starring Ethan Hawke,Amanda Seyfried',
   //page
  ),

   A24Description(
    id: 6,
    image: 'lib/assets/Hereditary.jpg',
    name: 'Hereditary(2018)',
    genre: 'Horror,Mystery,Thriller',
    overView:
        "When Ellen, the matriarch of the Graham family, passes away, her daughter's family begins to unravel cryptic and increasingly terrifying secrets about their ancestry.",
    director: 'Directed by Ari Aster',
    actors: 'Starring Tony Collete,Alex Wolff',
   //page
  ),  

   A24Description(
    id: 7,
    image: 'lib/assets/LAMB.jpg',
    name: 'Lamb(2021)',
    genre: 'Drama,Fantasy,Horror',
    overView:
        "Lamb depicts a couple raising a half-lamb, half-human child, blurring lines of parenthood, nature, and identity in rural Iceland.",
    director: 'Directed by Valdimar Jóhannsson',
    actors: 'Starring Noomi Rapace',
   //page
  ),

   A24Description(
    id: 8,
    image: 'lib/assets/lighthouse.jpg',
    name: 'The Lighthouse(2019)',
    genre: 'Drama,Fantasy,Thriller',
    overView:
        "Two lighthouse keepers try to maintain their sanity while living on a remote and mysterious New England island in the 1890s.",
    director: 'Directed by Robert Eggers',
    actors: 'Starring William Daffeo, Robert Pattinson',
   //page
  ),

    A24Description(
    id: 9,
    image: 'lib/assets/Locke.jpg',
    name: 'Locke(2014)',
    genre: 'Drama,Thriller',
    overView:
        "Locke is a drama film starring Tom Hardy, unfolding entirely in a car as a man juggles personal and professional crises.",
    director: 'Directed by Steven Knight',
    actors: 'Starring Tom Hardy',
   //page
  ),
  
   A24Description(
    id: 10,
    image: 'lib/assets/midsommar.jpg',
    name: 'Midsommar(2019)',
    genre: 'Horror,Drama,Mystery',
    overView:
        "A group of friends visits a remote Swedish village, experiencing disturbing rituals during a summer solstice festival.",
    director: 'Directed by Ari Aster',
    actors: 'Starring Florence Pugh',
   //page
  ),

   A24Description(
    id: 11,
    image: 'lib/assets/Moonlight.jpg',
    name: 'Moonlight(2016)',
    genre: 'Drama',
    overView:
        "A coming-of-age drama explores the life of a young black man in Miami, grappling with identity and sexuality.",
    director: 'Directed by Barry Jenkins',
    actors: 'Starring Mahershala Ali, Naomi Harris',
   //page
  ),

   A24Description(
    id: 12,
    image: 'lib/assets/swiss army man.jpg',
    name: 'Swiss Army Man(2016)',
    genre: 'Drama,Fantasy',
    overView:
        "A stranded man befriends a flatulent corpse, embarking on an eccentric and surreal journey of self-discovery.",
    director: 'Directed by The Daniels',
    actors: 'Starring Paul Dano,Daniel Radcliffe',
   //page
  ),

   A24Description(
    id: 13,
    image: 'lib/assets/The Green Knight.jpg',
    name: 'The Green Knight(2021)',
    genre: 'Drama,Fantasy',
    overView:
        "A medieval fantasy film follows Sir Gawain's quest to confront an enigmatic figure, testing his courage and honor.",
    director: 'Directed by Davil Lowery',
    actors: 'Starring Dev Patel,Alicia Wikendar',
   //page
  ),

    A24Description(
    id: 14,
    image: 'lib/assets/the killing of a sacred deer poster.jpg',
    name: 'The Killing of a Sacred Deer(2017)',
    genre: 'Drama,Thriller,Mystery',
    overView:
        "A psychological thriller portrays a surgeon's life unraveling when he's faced with a mysterious boy's unsettling demands and consequences.",
    director: 'Directed by Yorgos Lanthimos',
    actors: 'Starring Colin Farrell,Nicole Kidman,Barrey Keoghan',
   //page
  ),

    A24Description(
    id: 15,
    image: 'lib/assets/The Lobster.jpg',
    name: 'The Lobster(2015)',
    genre: 'Drama,Romance,Comedy',
    overView:
        "A dystopian comedy-drama where single people must find a partner in 45 days or risk being transformed into an animal.",
    director: 'Directed by Yorgos Lanthimos',
    actors: 'Starring Colin Farrell,Rachel Weisz,Léa Seydoux',
   //page
  ),

   A24Description(
    id: 16,
    image: 'lib/assets/The Witch.jpg',
    name: 'The Witch(2015)',
    genre: 'Drama,Horror,Mystery',
    overView:
        "A horror film set in 1630s New England follows a Puritan family encountering malevolent forces in the wilderness.",
    director: 'Directed by Robert Eggers',
    actors: 'Starring Anya Taylor-Joy',
   //page
  ),

    A24Description(
    id: 17,
    image: 'lib/assets/Uncut Gems.jpg',
    name: 'Uncut Gems(2019)',
    genre: 'Drama,Thriller,Crime',
    overView:
        "A frenetic thriller follows a New York City jeweler's high-stakes gambling addiction and chaotic pursuit of a valuable gemstone.",
    director: 'Directed by Safdie Brothers',
    actors: 'Starring Adam Sandler',
   //page
  ),

  A24Description(
    id: 18,
    image: 'lib/assets/Under the silver lake.jpg',
    name: 'Under the Silver Lake(2018)',
    genre: 'Drama,Mystery,Crime',
    overView:
        "A neo-noir mystery follows a man's obsessive quest through Los Angeles after his mysterious neighbor disappears.",
    director: 'Directed by David Robert Mitchell',
    actors: 'Starring Andrew Garfield',
   //page
  ),

  A24Description(
    id: 19,
    image: 'lib/assets/Under the Skin.jpg',
    name: 'Under the Skin(2014)',
    genre: 'Drama,Science-fiction',
    overView:
    "A seductive stranger prowls the streets of Glasgow in search of prey: unsuspecting men who fall under her spell.",
    director: 'Directed by Jonathan Glazer',
    actors: 'Starring Scarlet Johnson',
   //page
  ),

   A24Description(
    id: 20,
    image: 'lib/assets/whale.jpg',
    name: 'The Whale(2022)',
    genre: 'Drama',
    overView:
        "A reclusive English teacher suffering from severe obesity attempts to reconnect with his estranged teenage daughter for one last chance at redemption.",
    director: 'Directed by Darren Aranofsky',
    actors: 'Starring Brendan Fraser,Sadie Sink',
   //page
  ),
];

List<A24Description> a24shows =[
  A24Description(
    id: 0,
    image: 'lib/assets/beef poster.jpg',
    name: 'Beef(2023)',
    genre: 'Comedy,Drama',
    overView:
        "A road rage incident between two strangers — a failing contractor and an unfulfilled entrepreneur — sparks a feud that brings out their darkest impulses.",
    director: 'Directed by Lee Sung-jin',
    actors: 'Starring Steven Yeun,Ali Wong',
   //page
  ),

  A24Description(
    id: 1,
    image: 'lib/assets/euphoria poster.jpg',
    name: 'Euphoria(2019)',
    genre: 'Drama',
    overView:
        "A group of high school students navigate love and friendships in a world of drugs, sex, trauma, and social media.",
    director: 'Directed by Sam Levinson',
    actors: 'Starring Zendaya',
   //page
  ),

   A24Description(
    id: 2,
    image: 'lib/assets/idol tvshow.jpg',
    name: 'The Idol(2023)',
    genre: 'Drama',
    overView:
        "After a breakdown, Jocelyn aims to reclaim her pop star status. Romance with nightclub impresario Tedros ignites her journey's direction.",
    director: 'Directed by Sam Levinson',
    actors: 'Starring The Weeknd,Lily-Rose Depp',
   //page
  ),

  A24Description(
    id: 3,
    image: 'lib/assets/ramy tvshow.jpg',
    name: 'Ramy(2019)',
    genre: 'Drama',
    overView:
        "A comedy-drama series follows a first-generation Egyptian-American navigating life, love, and faith in New Jersey.",
    director: 'Directed by Ramy Youssef',
    actors: 'Starring Ramy Youssef',
   //page
  ),

   A24Description(
    id: 4,
    image: 'lib/assets/the hazbin hotel tvshow.jpg',
    name: 'Hazbin Hotel(2024)',
    genre: 'Action,Sci-fi & Fantasy',
    overView:
        "In attempt to find a non-violent alternative for reducing Hell's overpopulation, the daughter of Lucifer opens a rehabilitation hotel that offers a group of misfit demons a chance at redemption.",
    director: 'Directed by Vivienne Medrano',
    actors: 'Starring Erika Henningsen',
   //page
  ),
];