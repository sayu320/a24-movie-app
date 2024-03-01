import 'package:a24_movie_app/data/a24data.dart';
import 'package:a24_movie_app/provider/movies/watchlist_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WatchList extends StatelessWidget {
  const WatchList({super.key});

  @override
  Widget build(BuildContext context) {

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
          //appbar containing a24 logo
          Container(
              height: 58,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
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
                  ],
                ),
              )),
          //title watchlist
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Container(
                  height: 90,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: const Text(
                              'Watchlist',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500),
                            )),
                      ]))),
          //list of movies
          Expanded(child: Consumer<ListProvider>(
            builder: (context, provider, _) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: provider.items.length,
                    itemBuilder: (context, index) {
                      A24Description movie = provider.items[index];
                      return Card(
                        color: Colors.blueGrey,
                        child: ListTile(
                          onLongPress: () {
                            provider.remove(movie);
                            showSnackBarMessage('Removed from watchlist');
                          },
                          contentPadding: const EdgeInsets.all(16.0),
                          leading: Image.asset(
                            movie.image,
                            fit: BoxFit.cover,
                          ),
                          title: Text(
                            movie.name,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 15),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movie.genre,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                movie.overView,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                movie.director,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                movie.actors,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ));
            },
          ))
        ]));
  }
}
