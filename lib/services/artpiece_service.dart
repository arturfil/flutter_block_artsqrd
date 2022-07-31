import 'dart:convert';
import 'package:artsqrd/global/environment.dart';
import 'package:artsqrd/models/artpiece_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ArtpieceService with ChangeNotifier {
  final client = http.Client();

  Future<ArtpieceResponse> getData() async {
    final queryParameteres = {"pageIndex": "1", "pageSize": "6"};
    final uri = Uri.https(Environment.apiUrl, '/api/artpieces', queryParameteres);
    final response = await client.get(uri);
    final json = jsonDecode(response.body);
    return ArtpieceResponse.fromJson(json);
  }
}
