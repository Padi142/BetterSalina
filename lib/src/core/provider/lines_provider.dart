import 'dart:convert';

import 'package:better_salina_app/src/core/model/line_number.dart';
import 'package:http/http.dart' as http;

class LinesProvidel {
  Future<List<LineNumber>> loadLines(String stopId) async {
    try {
      List<LineNumber> lines = [];

      final Uri url =
          Uri.parse('https://mapa.idsjmk.cz/api/Departures?stopid=$stopId');
      var response = await http.get(url);
      final decodedResponse = jsonDecode(response.body);
      List<dynamic> postLists = decodedResponse["PostList"];
      for (var it in postLists) {
        lines.add(LineNumber.fromJson(it));
      }
      return lines;
    } catch (e) {
      return [];
    }
  }
}
