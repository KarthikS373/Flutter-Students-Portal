import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:studentsportal/Models/Alert.dart';

import '../Widgets/swipeIndicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 8),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: <Widget>[
            // SECTION 1
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    child: Image.asset("assets/Images/ig.png", width: 50),
                    onTap: () {
                      print("OPENS DRWAER");
                    },
                  ),
                  Container(
                    height: 59,
                    width: 59,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("assets/Images/ig.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //  SECTION 2
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                bottom: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "GOOD MORNING",
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "USER",
                    style: GoogleFonts.inter(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 15, right: 6),
                      itemCount: recentAlerts.length,
                      itemBuilder: (BuildContext context, int index) {
                        Alert _currentAlert = recentAlerts[index];
                        late Color _cardColor;
                        switch (_currentAlert.title) {
                          case "Test":
                            _cardColor = Colors.red;
                            break;
                          case "Quiz":
                            _cardColor = Colors.blue;
                            break;
                          case "Assignment":
                            _cardColor = Colors.yellow;
                            break;
                          case "Homework":
                            _cardColor = Colors.orange;
                            break;
                          default:
                            _cardColor = Colors.black;
                        }
                        ;
                        return Container(
                          height: 100,
                          width: 350,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: _cardColor,
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                child: SvgPicture.network(
                                    "https://bgjar.com/simple-shiny"),
                                bottom: 0,
                                right: 0,
                              ),
                              Positioned(
                                left: 20,
                                top: 25,
                                child: Text(
                                  '${_currentAlert.title} - ${_currentAlert.subject}',
                                  style: GoogleFonts.inter(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                top: 75,
                                child: Row(
                                  children: <Widget>[
                                    const Icon(
                                      Icons.question_answer,
                                      color: Colors.white60,
                                      size: 25,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      _currentAlert.desc!,
                                      style: GoogleFonts.inter(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 20,
                                top: 158,
                                child: Row(
                                  children: <Widget>[
                                    const Icon(
                                      Icons.timelapse_outlined,
                                      color: Colors.white60,
                                      size: 25,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Due : ${DateFormat("EEEE").format(_currentAlert.time)}",
                                      style: GoogleFonts.inter(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // SECTION 3
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                bottom: 15,
                top: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text("Options"),
                  buildSwipeSplash(context)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
