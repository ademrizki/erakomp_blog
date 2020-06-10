import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentPage extends StatelessWidget {
  static const String id = 'contentPage';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: <Widget>[Icon(Icons.share)],
            stretch: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            pinned: true,
            floating: false,
            snap: false,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/28.jpg',
                fit: BoxFit.fill,
              ),
              title: Text(
                'Lorem Ipsum',
                style: GoogleFonts.dosis(),
              ),
              centerTitle: true,
              collapseMode: CollapseMode.parallax,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Text('''
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum '''),
                Text('''
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum '''),
                Text('''
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum '''),
                Text('''
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum '''),
                Text('''
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum '''),
                Text('''
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum '''),
                Text('''
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum '''),
                Text('''
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum '''),
                Text('''
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum '''),
                Text('''
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem 
Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum '''),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
