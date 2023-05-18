// C:\Users\Bhagyashri\PycharmProjects\Portfolio\Portfolio
// C:\Users\Bhagyashri\PycharmProjects\django_env\Scripts\

import 'package:flutter/material.dart';
import 'package:portfolior/profile_screen.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 5, 3, 10),),
  textTheme: GoogleFonts.latoTextTheme(),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 41, 10, 116),
    toolbarHeight: 300,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(150, 30), bottomRight: Radius.elliptical(150, 30)))
      // only()
  ),
);

void main() {
  runApp(MaterialApp(
    theme: theme,
    home: const ProfileScreen(),
  ));
}
