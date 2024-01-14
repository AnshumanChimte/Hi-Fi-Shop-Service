import 'package:flutter/material.dart';
import 'package:hifisevices/homepage.dart';
import 'login_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase Login',
      initialRoute: '/',
      routes: {
        '/': (context) => Loginpage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}