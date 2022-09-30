import 'dart:convert';

import 'package:better_salina_app/src/core/model/line_number.dart';
import 'package:better_salina_app/src/core/model/station_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StationsProvider {
  Future<List<StationModel>> loadStations() async {
    final prefs = await SharedPreferences.getInstance();

    final stations = prefs.getStringList("stations");
    if (stations != null) {
      return stations
          .map((it) => StationModel.fromJson(jsonDecode(it)))
          .toList();
    } else {
      return const [StationModel(id: "1566", name: "Semilaso")];
    }
  }

  Future<void> addStation(StationModel station) async {
    final prefs = await SharedPreferences.getInstance();
    final stations = prefs.getStringList("stations");
    if (stations != null) {
      stations.add(station.toJson().toString());
      prefs.setStringList("stations", stations);
    } else {
      prefs.setStringList("stations", [station.toJson().toString()]);
    }
  }
}
