import 'package:flutter/material.dart';

class Artpiece {
  final String id;
  final String title;
  final String genre;
  final String artist;

  Artpiece(
      {@required this.id,
      @required this.title,
      @required this.genre,
      @required this.artist});
}
