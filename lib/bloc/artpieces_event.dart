import 'package:flutter/cupertino.dart';

abstract class ArtpiecesEvent {}

class ArtpiecesPageRequest extends ArtpiecesEvent {
  final int pageIndex;
  ArtpiecesPageRequest(
    {@required this.pageIndex}
  );
}
