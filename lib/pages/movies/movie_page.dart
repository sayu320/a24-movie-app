import 'package:a24_movie_app/data/a24data.dart';
import 'package:a24_movie_app/pages/movies/fav_movie.dart';
import 'package:a24_movie_app/pages/movies/watchlist_page.dart';
import 'package:a24_movie_app/provider/movies/fav_provider.dart';
import 'package:a24_movie_app/provider/movies/watchlist_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({super.key});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    //list provider
    ListProvider listProvider = Provider.of<ListProvider>(context);
    //fav provider
    MovieFavProvider movieFavProvider = Provider.of<MovieFavProvider>(context);
    final screenSize = MediaQuery.of(context).size;

    void showSnackBarMessage(String message) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ));
    }

    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const SizedBox(
            height: 10,
          ),
          //appbar containing a24 logo,fav icon & list icon
          Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                        width: 70,
                        height: 70,
                        child: Image.asset(
                          'lib/assets/a24icon.png',
                          width: 50,
                        )),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const FavMovie(),
                          ));
                        },
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 30,
                        ),
                        padding: EdgeInsets.zero,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const WatchList(),
                          ));
                        },
                        icon: const Icon(
                          Icons.list,
                          color: Colors.white,
                          size: 35,
                        ),
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ],
                ),
              )),
          //movies titile
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                  height: 90,
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Movies',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w500),
                        ),
                      ]))),
          //image list
          Expanded(
              child: SingleChildScrollView(
            reverse: true,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                  spacing: 4.0,
                  runSpacing: 4.0,
                  alignment: WrapAlignment.start,
                  children: List.generate(a24movies.length, (index) {
                    //add to list
                    A24Description movie = a24movies[index];
                    //add to fav
                    A24Description fmovie = a24movies[index];
                    return SizedBox(
                      width: screenSize.width / 2 - 16.0,
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              a24movies[index].image,
                              fit: BoxFit.cover,
                            ),
                            //section containing fav icon and add button
                            Container(
                              color: Colors.black,
                              width: double.infinity,
                              height: 45,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        if (movieFavProvider.items
                                            .contains(fmovie)) {
                                          movieFavProvider
                                              .removefromfavmovies(fmovie);
                                        } else {
                                          movieFavProvider
                                              .addtofavmovies(fmovie);
                                          showSnackBarMessage(
                                              'Added to favorites');
                                        }
                                      },
                                      icon: Icon(
                                        movieFavProvider.items.contains(fmovie)
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        size: 30,
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                    onPressed: () {
                                      if (listProvider.items.contains(movie)) {
                                        listProvider.remove(movie);
                                      } else {
                                        listProvider.add(movie);
                                        showSnackBarMessage(
                                            'Added to watchlist');
                                      }
                                    },
                                    icon: Icon(
                                      listProvider.items.contains(movie)
                                          ? Icons.check
                                          : Icons.add,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  })),
            ),
          ))
        ]));
  }
}
