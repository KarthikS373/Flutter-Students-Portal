import 'package:flutter/material.dart';
import 'package:studentsportal/Widgets/AppBar.dart';
import 'package:studentsportal/Widgets/Formfields.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: loginAppBar,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "LogIn",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "LogIn to ur account text",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  BuildUsername(),
                  SizedBox(
                    height: 20,
                  ),
                  BuildEmail(),
                  SizedBox(
                    height: 20,
                  ),
                  BuildPassword(),
                  SizedBox(
                    height: 20,
                  ),
                  BuildCpassword(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
