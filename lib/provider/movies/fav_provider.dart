import 'dart:collection';

import 'package:a24_movie_app/data/a24data.dart';
import 'package:flutter/material.dart';

class MovieFavProvider extends ChangeNotifier{
  final List<A24Description> _movies = [];
  List<A24Description> get items => UnmodifiableListView(_movies);
  void addtofavmovies(A24Description fmovie){
    _movies.add(fmovie);
    notifyListeners();
  }
  void removefromfavmovies(A24Description fmovie){
    _movies.remove(fmovie);
    notifyListeners();
  }
}