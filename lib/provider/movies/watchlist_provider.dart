import 'dart:collection';

import 'package:a24_movie_app/data/a24data.dart';
import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier {
  final List<A24Description> _movies = [];
  List<A24Description> get items=> UnmodifiableListView(_movies);

  void add(A24Description movie) {
    _movies.add(movie);
    notifyListeners();
  }

  void remove(A24Description movie){
    _movies.remove(movie);
    notifyListeners();
  }
}


