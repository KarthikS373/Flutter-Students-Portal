import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studentsportal/utils/routesHandler.dart';
import 'package:studentsportal/utils/themeData.dart';
import 'package:studentsportal/views/welcomeScreen.dart';

class SizeConfig{
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late Orientation screenOrientation;

   void init(BuildContext context){
     _mediaQueryData   = MediaQuery.of(context);
     screenWidth       = _mediaQueryData.size.height;
     screenHeight      = _mediaQueryData.size.width;
     screenOrientation = _mediaQueryData.orientation;

   }
}

late int? initScreen;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  initScreen = await pref.getInt("initScreen");
  await pref.setInt("initScreen", 1);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myThemeData(),
      initialRoute: initScreen == 0 || initScreen == null ? '/getStarted' : '/logIn' ,
      onGenerateRoute: generateRoute,
    //  to change use Navigator.of(context).pushNamed('/name', arguments: <args>)
    );
  }
}