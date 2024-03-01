import 'package:a24_movie_app/pages/splash_screen.dart';
import 'package:a24_movie_app/provider/movies/fav_provider.dart';

import 'package:a24_movie_app/provider/movies/watchlist_provider.dart';
import 'package:a24_movie_app/provider/shows/fav_provider.dart';
import 'package:a24_movie_app/provider/shows/watchlist_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create:(context) => ListProvider()),
      ChangeNotifierProvider(create:(context) => MovieFavProvider()),
      ChangeNotifierProvider(create:(context) => ListShowsProvider()), 
       ChangeNotifierProvider(create:(context) => FavShowsProvider()), 
    ],
    child: const MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(),
    );
  }
}
