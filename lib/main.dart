import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapps/Calculator_Screen.dart';

void main() {
  runApp(homeScreen());
}

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              iconColor: MaterialStateProperty.all(Colors.orange),
              foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Colors.blueGrey))),
        appBarTheme: const AppBarTheme(color: Colors.orange, titleSpacing: 3.0),
      ),
      home: calculatorScreen(),
    );
  }
}
