import 'package:artsqrd/models/artpiece_response.dart';
import 'package:flutter/cupertino.dart';

abstract class ArtpiecesState {}

class ArtpiecesInitial extends ArtpiecesState {}

class ArtpiecesLoadInProgress extends ArtpiecesState {}

class ArtpiecesPageLoadSuccess extends ArtpiecesState {
  final List<ArtpieceList> artpiecesLists;
  final int pageIndex;
  ArtpiecesPageLoadSuccess(
      {@required this.artpiecesLists
      , @required this.pageIndex
      });
}

class ArtpiecePageLoadFailed extends ArtpiecesState {
  final Error error;
  ArtpiecePageLoadFailed({@required this.error});
}
