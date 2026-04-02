import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(GestureApp());
}

class GestureApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'clture Lab',
      debugShowCheckedModeBanner: true,
      // theme: ThemeData(useMaterial3: true, colorSchemeSeed: const Color.fromARGB(255, 178, 44, 44)),
      home: HomePage(),
    );
  }
}
