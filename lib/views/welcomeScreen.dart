import 'package:flutter/material.dart';
import 'package:studentsportal/Widgets/GlassMorphism.dart';
import 'package:studentsportal/main.dart';

import '../Widgets/swipeView.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: SwipeView(
          child: Container(
            margin: const EdgeInsets.only(bottom: 60),
            height: 15,
            decoration:const BoxDecoration(
              color: Colors.red
            ),
          ),
        ),
    );
  }
}
