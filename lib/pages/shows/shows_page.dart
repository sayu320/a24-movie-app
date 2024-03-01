import 'package:a24_movie_app/data/a24data.dart';
import 'package:a24_movie_app/pages/shows/fav_shows.dart';
import 'package:a24_movie_app/pages/shows/list_shows.dart';
import 'package:a24_movie_app/provider/shows/fav_provider.dart';
import 'package:a24_movie_app/provider/shows/watchlist_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShowsPage extends StatefulWidget {
  const ShowsPage({super.key});

  @override
  State<ShowsPage> createState() => _ShowsPageState();
}

class _ShowsPageState extends State<ShowsPage> {
  @override
  Widget build(BuildContext context) {
    //list provider
    ListShowsProvider listShowsProvider =
        Provider.of<ListShowsProvider>(context);
    //fav provider
    FavShowsProvider favShowsProvider = Provider.of<FavShowsProvider>(context);
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
                            builder: (context) => const FavShows(),
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
                            builder: (context) => const ListShows(),
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
          //title shows
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                  height: 90,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: const Text(
                              'Shows',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500),
                            )),
                      ]))),
          //list of shows
          Expanded(
              child: SingleChildScrollView(
            reverse: true,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: List.generate(a24shows.length, (index) {
                    //add to list
                    A24Description lshows = a24shows[index];
                    //add to fav
                    A24Description fshows = a24shows[index];
                    return SizedBox(
                      width: screenSize.width / 2 - 16.0,
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              a24shows[index].image,
                              fit: BoxFit.cover,
                            ),
                            //section containing fav icon and add icon
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
                                        if (favShowsProvider.items
                                            .contains(fshows)) {
                                          favShowsProvider
                                              .removefromfavshows(fshows);
                                        } else {
                                          favShowsProvider
                                              .addtofavshows(fshows);
                                          showSnackBarMessage(
                                              'Added to favorites');
                                        }
                                      },
                                      icon: Icon(
                                        favShowsProvider.items.contains(fshows)
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        size: 30,
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                    onPressed: () {
                                      if (listShowsProvider.items
                                          .contains(lshows)) {
                                        listShowsProvider
                                            .removefromlistshows(lshows);
                                      } else {
                                        listShowsProvider
                                            .addtolistshows(lshows);
                                        showSnackBarMessage(
                                            'Added to watchlist');
                                      }
                                    },
                                    icon: Icon(
                                      listShowsProvider.items.contains(lshows)
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
