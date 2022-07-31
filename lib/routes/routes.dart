import 'package:artsqrd/screens/artpiece_details.dart';
import 'package:artsqrd/screens/home.dart';
import 'package:artsqrd/screens/login.dart';
import 'package:artsqrd/screens/register.dart';
import 'package:flutter/cupertino.dart';
  
    
final int id = 2;

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'login': (_) => Login(),
  'register': (_) => Register(),
  'home': (_) => HomeScreen(),
  'artpieces/$id': (_) => ArtpieceDetails(),
};
