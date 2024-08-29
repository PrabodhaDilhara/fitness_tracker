import 'package:fitness_tracker/constant/colors.dart';
import 'package:fitness_tracker/page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Responsive fitness tracker",
      theme: ThemeData(
        scaffoldBackgroundColor: BackgroundColor,
      ),
      home: HomePage(),
    );
  }
}
