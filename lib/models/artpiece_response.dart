import 'package:flutter/material.dart';

class ArtpieceList {
  final int id;
  final String name;
  final String description;
  final String pictureUrl;
  final String artist;
  final String genre;

  ArtpieceList(
      {@required this.id,
      @required this.name,
      @required this.description,
      @required this.pictureUrl,
      @required this.artist,
      @required this.genre});

  factory ArtpieceList.fromJson(Map<String, dynamic> json) {
    final id = json['id'] as int;
    final name = json['name'];
    final description = json['description'];
    final pictureUrl = json['pictureUrl'];
    final artist = json['artist'];
    final genre = json['genre'];

    return ArtpieceList(
        id: id,
        name: name,
        description: description,
        pictureUrl: pictureUrl,
        artist: artist,
        genre: genre);
  }
}

class ArtpieceResponse {
  final List<ArtpieceList> artpieceList;
  final int pageIndex;
  final int pageCount;

  ArtpieceResponse({
    @required this.artpieceList,
    @required this.pageIndex,
    @required this.pageCount,
  });

  factory ArtpieceResponse.fromJson(Map<String, dynamic> json) {
    final pageIndex = json['pageIndex'];
    final pageCount = json['pageCount'];
    final artpieceList = (json['data'] as List)
        .map((listingJson) => ArtpieceList.fromJson(listingJson))
        .toList();

    return ArtpieceResponse(
      artpieceList: artpieceList,
      pageCount: pageCount,
      pageIndex: pageIndex
    );
  }
}
