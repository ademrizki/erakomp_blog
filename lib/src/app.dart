import 'package:blog/src/screens/home.dart';
import 'package:blog/src/screens/home_tab.dart';
import 'package:blog/src/screens/programe.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: GoogleFonts.dosis(),
        ),
      ),
      home: HomeTabPage(),
//      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        HomeTabPage.id: (context) => HomeTabPage(),
        ProgrammePage.id: (context) => ProgrammePage(),
      },
    );
  }
}
