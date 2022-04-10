import 'dart:convert';

import 'package:buddycafes/models/cafe.dart';
import 'package:http/http.dart' as http;

class CafesApi {
  static Future<List<Cafe>> getCafes(String query) async {
    final url = Uri.parse(
      //change link to database!
        'https://gist.githubusercontent.com/JohannesMilke/d53fbbe9a1b7e7ca2645db13b995dc6f/raw/eace0e20f86cdde3352b2d92f699b6e9dedd8c70/books.json');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List cafes = json.decode(response.body);

      return cafes.map((json) => Cafe.fromJson(json)).where((cafe) {
        final titleLower = cafe.petc_name.toLowerCase();
        final authorLower = cafe.petc_type.toLowerCase();
        final searchLower = query.toLowerCase();

        return titleLower.contains(searchLower) ||
            authorLower.contains(searchLower);
      }).toList();
    } else {
      throw Exception();
    }
  }
}
