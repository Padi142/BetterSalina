import 'package:better_salina_app/src/core/bloc/salina/salina_bloc.dart';
import 'package:better_salina_app/src/core/bloc/salina/salina_state.dart';
import 'package:better_salina_app/src/core/model/salina_model.dart';
import 'package:better_salina_app/src/ui/widgets/salina_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:better_salina_app/constants.dart' as constants;
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SalinaBloc>(context).add(const LoadLines("1721", 1));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Better šaliny "),
          backgroundColor: constants.secondaryColor,
        ),
        body: BlocBuilder<SalinaBloc, SalinaState>(
          builder: (context, state) {
            return state.maybeWhen(loadedTables: (List<Salina> tables) {
              return TablesBody(tables: tables);
            }, orElse: () {
              return const Loading();
            });
          },
        ),
      ),
    );
  }
}

class TablesBody extends StatefulWidget {
  final List<Salina> tables;
  const TablesBody({required this.tables, super.key});

  @override
  State<TablesBody> createState() => _TablesBodyState();
}

class _TablesBodyState extends State<TablesBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: widget.tables.length,
            itemBuilder: (_, index) {
              return SalinaContainer(
                salina: widget.tables[index],
              );
            }),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  BlocProvider.of<SalinaBloc>(context)
                      .add(const LoadLines("1721", 0));
                },
                child: const Text("0")),
            ElevatedButton(
                onPressed: () {
                  BlocProvider.of<SalinaBloc>(context)
                      .add(const LoadLines("1721", 1));
                },
                child: const Text("1")),
          ],
        )
      ],
    );
  }
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
