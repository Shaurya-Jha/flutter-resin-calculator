import 'package:flutter/material.dart';
import 'package:resin_try1/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   useMaterial3: true
      // ),
      routes: {
        "/": (context) => const HomePage(),
      },
      // home: HomePage(),
      );
  }
}
