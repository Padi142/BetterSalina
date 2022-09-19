import 'package:better_salina_app/src/core/model/salina_model.dart';
import 'package:flutter/material.dart';
import 'package:better_salina_app/constants.dart' as constants;

class SalinaContainer extends StatelessWidget {
  final Salina salina;
  const SalinaContainer({required this.salina, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: constants.secondaryColor,
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              if (salina.lineName == "1")
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      salina.lineName,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (salina.lineName == "2")
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.greenAccent),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(salina.lineName,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
              if (salina.lineName != "2" && salina.lineName != "1")
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(salina.lineName,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  salina.finalStop,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  salina.timeMark,
                  style: const TextStyle(
                      fontSize: 21, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
