import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:studentsportal/Models/Alert.dart';

import '../Widgets/swipeIndicator.dart';

class ChatBoxPage extends StatefulWidget {
  const ChatBoxPage({Key? key}) : super(key: key);

  @override
  _ChatBoxPageState createState() => _ChatBoxPageState();
}

class _ChatBoxPageState extends State<ChatBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 250,
        color: Colors.blue,
        child: const Center(
          child: Text("Chat"),
        ),
      ),
    );
  }
}
