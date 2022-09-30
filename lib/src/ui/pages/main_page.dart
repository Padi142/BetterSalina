import 'package:better_salina_app/src/core/bloc/salina/salina_bloc.dart';
import 'package:better_salina_app/src/core/bloc/salina/salina_state.dart';
import 'package:better_salina_app/src/core/bloc/stations/stations_bloc.dart';
import 'package:better_salina_app/src/core/bloc/stations/stations_state.dart';
import 'package:better_salina_app/src/core/model/line_number.dart';
import 'package:better_salina_app/src/core/model/salina_model.dart';
import 'package:better_salina_app/src/core/model/station_model.dart';
import 'package:better_salina_app/src/ui/widgets/change_line_button.dart';
import 'package:better_salina_app/src/ui/widgets/salina_container.dart';
import 'package:better_salina_app/src/ui/widgets/stations_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:better_salina_app/constants.dart' as constants;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<StationsBloc>(context).add(const LoadStations());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<StationsBloc, StationsState>(
      listener: ((context, state) {
        state.maybeWhen(
            loadedStations: ((stations) {
              BlocProvider.of<SalinaBloc>(context)
                  .add(LoadLines(stations[0].id));
            }),
            orElse: () {});
      }),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Better šaliny "),
            backgroundColor: constants.secondaryColor,
          ),
          body: Column(
            children: [
              BlocBuilder<StationsBloc, StationsState>(
                  builder: ((context, state) {
                return state.maybeWhen(loadedStations: ((stations) {
                  return StationsBody(stations: stations);
                }), orElse: (() {
                  return const Loading();
                }));
              })),
              const SizedBox(
                height: 10,
              ),
              BlocBuilder<SalinaBloc, SalinaState>(
                builder: (context, state) {
                  return state.maybeWhen(loadedTables:
                      (List<LineNumber> lines, List<Salina> linesToShow) {
                    return TablesBody(tables: linesToShow, lines: lines);
                  }, error: () {
                    return const Center(
                      child: Text(
                        "error",
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  }, orElse: () {
                    return const Loading();
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StationsBody extends StatelessWidget {
  final List<StationModel> stations;
  const StationsBody({required this.stations, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: _generateStationsButtons(stations),
        ),
      ),
    );
  }
}

class TablesBody extends StatefulWidget {
  final List<Salina> tables;
  final List<LineNumber> lines;
  const TablesBody({required this.tables, required this.lines, super.key});

  @override
  State<TablesBody> createState() => _TablesBodyState();
}

class _TablesBodyState extends State<TablesBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: widget.tables.length,
              itemBuilder: (_, index) {
                return SalinaContainer(
                  salina: widget.tables[index],
                );
              }),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: _generateLineChangeButtons(widget.lines),
            ),
          ),
        )
      ],
    );
  }
}

List<Widget> _generateLineChangeButtons(List<LineNumber> lines) {
  return lines.map((it) => ChangeLineButton(line: it, lines: lines)).toList();
}

List<Widget> _generateStationsButtons(List<StationModel> stations) {
  return stations.map((it) => StationsButton(station: it)).toList();
}

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
