import 'dart:collection';

import 'package:a24_movie_app/data/a24data.dart';
import 'package:flutter/material.dart';

class FavShowsProvider extends ChangeNotifier{
  final List<A24Description> _shows = [];
  List<A24Description> get items=> UnmodifiableListView(_shows);

  void addtofavshows(A24Description fshows){
    _shows.add(fshows);
    notifyListeners();
  }
  void removefromfavshows(A24Description fshows){
    _shows.remove(fshows);
    notifyListeners();
  }
}