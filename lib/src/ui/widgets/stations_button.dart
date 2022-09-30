import 'package:better_salina_app/src/core/bloc/salina/salina_bloc.dart';
import 'package:better_salina_app/src/core/model/station_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:better_salina_app/constants.dart' as constants;

class StationsButton extends StatelessWidget {
  final StationModel station;
  const StationsButton({required this.station, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 45,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: constants.mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              BlocProvider.of<SalinaBloc>(context).add(LoadLines(station.id));
            },
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Text(
                station.name,
                style: const TextStyle(fontSize: 21),
              ),
            )),
      ),
    );
  }
}
