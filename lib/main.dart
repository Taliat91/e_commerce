// ignore: unused_import
import 'package:e_commerce/pages/bottom_bar.dart';
// ignore: unused_import
import 'package:e_commerce/pages/home_pg.dart';
// ignore: unused_import
import 'package:e_commerce/pages/login_pg.dart';
// ignore: unused_import
import 'package:e_commerce/pages/signup_pg.dart';
// ignore: unused_import
import 'package:e_commerce/pages/splash_pg.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'E - Commerce App',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  MyBottomNavBar(),
    );
  }
}
