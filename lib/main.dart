import 'package:flutter/material.dart';
import 'constants.dart';
import 'welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome Screen',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        brightness: Brightness.dark,
        textTheme: TextTheme(
          // ignore: deprecated_member_use
          display1: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          button: TextStyle(color: kPrimaryColor),
          // ignore: deprecated_member_use
          headline: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 20.0,
          ),
          // ignore: deprecated_member_use
          display2: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 32.0,
          ),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
