import 'package:artsqrd/bloc/artpieces_event.dart';
import 'package:artsqrd/bloc/artpieces_state.dart';
import 'package:artsqrd/services/artpiece_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArtpiecesBloc extends Bloc<ArtpiecesEvent, ArtpiecesState> {
  final _artpiecesService = ArtpieceService();
  ArtpiecesBloc() : super(ArtpiecesInitial());

  @override
  Stream<ArtpiecesState> mapEventToState(ArtpiecesEvent event) async* {
    if (event is ArtpiecesPageRequest) {
      yield ArtpiecesLoadInProgress();
      try {
        final artpiecesPageResponse = await _artpiecesService.getData();
        print("Trying request");
        yield ArtpiecesPageLoadSuccess(
            artpiecesLists: artpiecesPageResponse.artpieceList,
            pageIndex: artpiecesPageResponse.pageIndex);
      } catch (e) {
        print(e);
        yield ArtpiecePageLoadFailed(error: e);
      }
    }
  }
}
