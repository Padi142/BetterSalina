import 'package:better_salina_app/src/core/bloc/salina/salina_bloc.dart';
import 'package:better_salina_app/src/core/bloc/stations/stations_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:better_salina_app/constants.dart' as constants;

import 'src/ui/pages/main_page.dart';

class BetterSalina extends StatelessWidget {
  const BetterSalina({
    Key? key,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<SalinaBloc>(
            create: (BuildContext context) => SalinaBloc(),
          ),
          BlocProvider<StationsBloc>(
            create: (BuildContext context) => StationsBloc(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Better salina",
          theme: ThemeData(
              scaffoldBackgroundColor: constants.backroudColor,
              canvasColor: constants.mainColor,
              textTheme: GoogleFonts.rubikTextTheme()),
          home: const MainPage(),
        ));
  }
}
