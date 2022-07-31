import 'package:artsqrd/bloc/artpieces_bloc.dart';
import 'package:artsqrd/bloc/artpieces_event.dart';
import 'package:artsqrd/navigator/app_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (_) =>
                  ArtpiecesBloc()..add(ArtpiecesPageRequest(pageIndex: 1))),
        ],
        child: AppNavigator(),
      ),
    );
  }
}
