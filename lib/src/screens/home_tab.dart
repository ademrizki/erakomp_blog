import 'package:blog/src/screens/home.dart';
import 'package:blog/src/screens/programme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeTabPage extends StatefulWidget {
  static final String id = 'HomeTabPage';
  int selectedTabIndex;

  HomeTabPage({this.selectedTabIndex = 0});

  @override
  _HomeTabPageState createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  final List<Widget> _children = [
    HomePage(),
    ProgrammePage(),
    HomePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      widget.selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _children[widget.selectedTabIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grid_on,
            ),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box,
            ),
            title: SizedBox(),
          ),
        ],
        selectedFontSize: 0,
        unselectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.selectedTabIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
