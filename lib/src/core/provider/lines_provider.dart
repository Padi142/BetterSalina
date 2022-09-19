import 'dart:convert';

import 'package:better_salina_app/src/core/model/salina_model.dart';
import 'package:dio/dio.dart';

class LinesProvidel {
  Future<List<Salina>> loadLines(String stopId) async {
    try {
      List<Salina> salinas = [];
      var response = await Dio()
          .get('https://mapa.idsjmk.cz/api/Departures?stopid=$stopId');

      List<dynamic> postLists = response.data["PostList"];
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
