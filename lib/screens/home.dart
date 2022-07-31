import 'package:artsqrd/bloc/artpieces_bloc.dart';
import 'package:artsqrd/bloc/artpieces_state.dart';
import 'package:artsqrd/services/artpiece_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ArtSqrd2",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: BlocBuilder<ArtpiecesBloc, ArtpiecesState>(
        builder: (context, state) {
          if (state is ArtpiecesLoadInProgress) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ArtpiecesPageLoadSuccess) {
            return Padding(
              padding: EdgeInsets.all(6.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                    itemCount: state.artpiecesLists.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: GridTile(
                      child: Column(
                        children: [
                          Image.network(state.artpiecesLists[index].pictureUrl),
                          Text(state.artpiecesLists[index].name),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          } else if (state is ArtpiecePageLoadFailed) {
            return Center(
              child: Text(state.error.toString()),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
