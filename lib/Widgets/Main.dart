import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../views/HomePage.dart';
import '../views/NotesPage.dart';
import '../views/ProfilePage.dart';
import '../views/SettingsPage.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  final GlobalKey<CurvedNavigationBarState> _NavKey = GlobalKey();
  final List _pages = const [HomePage(), HomePage(), NotesPage(), SettingsPage(), ProfilePage()];
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.lightBlueAccent,
        key: _NavKey,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        color: Colors.grey,
        backgroundColor: Colors.transparent,
        height: 50,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: (_index == 0) ? Theme.of(context).accentColor : Colors.black,
          ),
          Icon(
            Icons.event_note,
            size: 30,
            color: (_index == 1) ? Theme.of(context).accentColor : Colors.black,
          ),
          Icon(
            Icons.book,
            size: 30,
            color: (_index == 2) ? Theme.of(context).accentColor : Colors.black,
          ),
          Icon(
            Icons.settings,
            size: 30,
            color: (_index == 3) ? Theme.of(context).accentColor : Colors.black,
          ),
          Icon(
            Icons.person_outline,
            size: 30,
            color: (_index == 4) ? Theme.of(context).accentColor : Colors.black,
          ),
        ],
      ),
      body: _pages[_index],
    );
  }
}
