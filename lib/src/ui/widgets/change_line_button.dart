import 'package:better_salina_app/src/core/bloc/salina/salina_bloc.dart';
import 'package:better_salina_app/src/core/model/line_number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:better_salina_app/constants.dart' as constants;

class ChangeLineButton extends StatelessWidget {
  final LineNumber line;
  final List<LineNumber> lines;
  const ChangeLineButton({required this.line, required this.lines, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 45,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: constants.mainColor),
            onPressed: () {
              BlocProvider.of<SalinaBloc>(context)
                  .add(ChangeLinesToShow(lines, line.id));
            },
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Text(
                line.name,
                style: const TextStyle(fontSize: 21),
              ),
            )),
      ),
    );
  }
}
