import 'package:flutter/material.dart';
import 'package:new_islami/view/screens/home/home_screen.dart';
import 'package:new_islami/view/screens/radio/radio_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: HomeScreen(),
    );
  }
}


