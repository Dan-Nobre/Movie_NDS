import 'package:flutter/material.dart';
import 'package:movie_nds/screens/loginscreen.dart';
import 'package:movie_nds/screens/principalScreen.dart';
import 'package:movie_nds/constants.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/loginscreen',
    routes: {'/loginscreen':(context) => const LoginScreen()},
    theme: ThemeData(
      fontFamily: 'Poppins',
      scaffoldBackgroundColor: bgColor,
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.blueGrey,
      ),
      textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black),
          bodyLarge: TextStyle(color: Colors.black),
          displayLarge: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
          titleLarge: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
          displayMedium: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          displaySmall: TextStyle(fontSize: 14, color: Colors.black)),
    ),
    // darkTheme: ThemeData.dark(),
    home: const PrincipalScreen(),
  ));
}
