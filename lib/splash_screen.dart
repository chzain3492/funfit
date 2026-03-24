import 'package:flutter/material.dart';
import 'dart:async';
import 'create_account.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => CreateAccount()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF1732A4), // Blue Background
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Center Logo / App Name
          Expanded(
            child: Center(
              child: Text(
                "FunFit",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Loading Indicator at Bottom
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: CircularProgressIndicator(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
