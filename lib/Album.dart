import 'package:flutter/material.dart';

class Album {
  String albumName, authorName, genre, date;
  List<String> songList;
  Image albumCover;

  Album(
    this.albumName,
    this.authorName,
    this.genre,
    this.date,
    this.albumCover,
    this.songList,
  );
}
