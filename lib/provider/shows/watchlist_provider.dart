import 'dart:collection';

import 'package:a24_movie_app/data/a24data.dart';
import 'package:flutter/material.dart';

class ListShowsProvider extends ChangeNotifier{
  final List<A24Description> _shows = [];
  List<A24Description> get items =>UnmodifiableListView(_shows);

  void addtolistshows(A24Description lshows){
    _shows.add(lshows);
    notifyListeners();
  }

  void removefromlistshows(A24Description lshows){
    _shows.remove(lshows);
    notifyListeners();
  }
}