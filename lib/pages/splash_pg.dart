// ignore_for_file: use_build_context_synchronously

import 'package:e_commerce/pages/signup_pg.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
  Future.delayed(const Duration(seconds: 5), () {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return SignUpPage();
    }));
  });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      // ignore: sized_box_for_whitespace
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 143, 255, 52),
            Color.fromARGB(255, 86, 242, 94),
          ]
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('E - C o m m e r c e App',
              style: TextStyle(
                fontSize: 50,
                color: Colors.amber[500],
                fontWeight: FontWeight.bold
              ),),
              
              Text('Order At Your Convenience!',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 30,
               ),),
            ],
          ),
        ),
      ) 
  ); 
  }
}