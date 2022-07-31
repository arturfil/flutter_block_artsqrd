import 'package:artsqrd/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [MaterialPage(child: HomeScreen())],
      onPopPage: (route, result) {
        return route.didPop(result);
      },
    );
  }
}
