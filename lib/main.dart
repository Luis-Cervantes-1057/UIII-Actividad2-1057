import 'package:myapp/home_coca_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // For fonts.
     textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const FitnessHomePage(),
    );
  }
}