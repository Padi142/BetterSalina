import 'package:better_salina_app/src/core/model/salina_model.dart';
import 'package:better_salina_app/src/ui/widgets/salina_number.dart';
import 'package:flutter/material.dart';
import 'package:better_salina_app/constants.dart' as constants;

class SalinaContainer extends StatelessWidget {
  final Salina salina;
  const SalinaContainer({required this.salina, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          tileColor: constants.secondaryColor,
          leading: SalinaNumber(
            lineName: salina.lineName,
          ),
          title: Text(
            salina.finalStop,
            style: const TextStyle(fontSize: 20),
          ),
          trailing: Text(
            salina.timeMark,
            style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
