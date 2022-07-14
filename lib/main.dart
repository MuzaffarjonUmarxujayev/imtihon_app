import 'package:flutter/material.dart';
import 'package:imtihon_app/screens/home_screen.dart';
import 'package:imtihon_app/screens/wone_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes:{
        HomeScreen.id: (context) => const HomeScreen(),
        WaneScreen.id: (context) => const WaneScreen(),
      },
    );
  }
}

