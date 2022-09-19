import 'dart:convert';

import 'package:better_salina_app/src/core/model/salina_model.dart';
import 'package:http/http.dart' as http;

class LinesProvidel {
  Future<List<Salina>> loadLines(String stopId) async {
    try {
      List<Salina> salinas = [];
      var client = http.Client();
      final Uri url =
          Uri.parse('https://mapa.idsjmk.cz/api/Departures?stopid=$stopId');
      var response = await http.get(url);
      final decodedResponse = jsonDecode(response.body);
      List<dynamic> postLists = decodedResponse["PostList"];
      List<dynamic> departures = postLists[0]["Departures"];
      departures.forEach((it) {
        salinas.add(Salina.fromJson(it));
      });
      return salinas;
    } catch (e) {
      return [];
    }
  }
}
