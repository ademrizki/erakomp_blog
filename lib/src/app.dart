import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/screens.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            headline6: GoogleFonts.dosis(
              fontSize: 20,
            ),
            headline5: GoogleFonts.dosis(),
          ),
        ),
        textTheme: TextTheme(
          bodyText2: GoogleFonts.dosis(),
        ),
      ),
      initialRoute: HomeTabPage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        HomeTabPage.id: (context) => HomeTabPage(),
        ProgrammePage.id: (context) => ProgrammePage(),
        ContentPage.id: (context) => ContentPage(),
        ProgrammeContentsPage.id: (context) => ProgrammeContentsPage(),
      },
    );
  }
}
