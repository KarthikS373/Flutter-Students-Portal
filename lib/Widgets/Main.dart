import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../views/HomePage.dart';
import '../views/NotesPage.dart';
import '../views/ProfilePage.dart';
import '../views/SettingsPage.dart';
import '../views/chatBoxPage.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  final GlobalKey<CurvedNavigationBarState> _NavKey = GlobalKey();
  final List _pages = const [
    HomePage(),
    ChatBoxPage(),
    NotesPage(),
    SettingsPage(),
    ProfilePage()
  ];
  var _index = 0;
  var _username = "USER";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 5, top: 45),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10 / 8),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      (1 / 2),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage("./assets/Images/background.jpg"),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                "Welcome ${_username}",
                style: GoogleFonts.inder(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.5,
                    fontSize: 18),
              ),
              const Spacer(),
              Row(
                children: <Widget>[
                  const Icon(
                    Icons.notifications_active_outlined,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Transform(
                    transform: Matrix4.translationValues(30, 28, 0),
                    child: Transform(
                      transform: Matrix4.rotationZ(3.14159),
                      child: const Icon(
                        Icons.sort,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ),
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
            Icons.message,
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
