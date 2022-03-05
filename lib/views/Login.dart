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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.075,
              ),
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
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                "./assets/Images/logInimg.png",
                fit: BoxFit.contain,
                height: 250,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    const BuildEmail(),
                    const SizedBox(
                      height: 20,
                    ),
                    const BuildPassword(),
                    const SizedBox(
                      height: 20,
                    ),

                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.055,
                      child: const Center(
                        child: Text("Log In", style: TextStyle(
                          color: Colors.white,
                        ),),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/Home');
                      },
                      color: Theme.of(context).accentColor,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
