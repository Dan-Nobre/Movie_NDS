import 'package:flutter/material.dart';
import 'package:movie_nds/app/principalScreen.dart';
import 'package:movie_nds/constants.dart';


void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Poppins',
      scaffoldBackgroundColor: bgColor,
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.orange,
      ),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Colors.black),
        bodyLarge: TextStyle(color: Colors.black),
        displayLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black)
      )
    ),
    darkTheme: ThemeData.dark(),
    home: const PrincipalScreen(),
  )
  );
}
