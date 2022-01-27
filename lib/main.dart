import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Screens/splash_Screen.dart';
import 'constants.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nutrition App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: KPrimaryColor,
        scaffoldBackgroundColor: KBackgroundColor,
        textTheme: GoogleFonts.rubikTextTheme(Theme.of(context).textTheme),
      ),
      home: const SplashScreen(),
    );
  }
}