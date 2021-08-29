import 'package:apportifolio/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rodrigo.R',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        colorScheme: ColorScheme.dark(),
        textTheme: GoogleFonts.sourceCodeProTextTheme(),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
