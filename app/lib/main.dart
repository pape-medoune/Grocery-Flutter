import 'package:app/Pages/IntroPage.dart';
import 'package:app/Pages/market.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery APP',
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        'IntroPage':(_)=>IntroPage(),   
        'market':(_)=>Market(),      
      },
    );
  }
}
