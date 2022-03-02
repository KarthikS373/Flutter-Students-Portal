import 'package:flutter/material.dart';
import '../views/welcome.dart';
import '../main.dart';
import '../views/Login.dart';
import '../views/welcomeScreen.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  final args = settings.arguments;
  switch(settings.name){
    case '/getStarted':
      return MaterialPageRoute(builder: (context) => const WelcomeScreen());
    case '/logIn':
      return MaterialPageRoute(builder: (context) => const LogIn());
    case '/welcome':
      return MaterialPageRoute(builder: (context) => const Welcome());
    default:
      return _errorRoute();
  }
}


Route<dynamic> _errorRoute(){
  return MaterialPageRoute(builder: (_){
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Text("Oh Snap ;( Page not found"),
        ),
      ),
    );
  });
}