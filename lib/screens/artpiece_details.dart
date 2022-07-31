import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArtpieceDetails extends StatelessWidget with ChangeNotifier {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => print("Test"),
        ),
        title: Text(
          "Details",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Expanded(
          child: Text("Details"),
        ),
      ),
    );
  }
}
