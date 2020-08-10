import 'package:flutter/material.dart';
import './screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raiffeisen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Montserrat',
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primaryColor: Color(0xFFFEF102),
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
              caption: TextStyle(
                  color: Color(0xFF8E8C92),
                  fontSize: 10,
                  letterSpacing: -0.24,
                  fontWeight: FontWeight.w500),
              bodyText1: TextStyle(
                  color: Color(0xFF525252),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  letterSpacing: -0.24),
              subtitle1: TextStyle(
                  color: Color(0xFF444444),
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  letterSpacing: -0.24),
              subtitle2: TextStyle(
                  color: Color(0xFF2C2C2C),
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  letterSpacing: -0.24),
              headline6: TextStyle(
                  color: Color(0xFF444444),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.24))),
      home: HomeScreen(),
    );
  }
}
