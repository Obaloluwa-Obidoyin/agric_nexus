import 'dart:async';

import 'package:agric_nexus/splash/welcomesplash.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //timer to navigate to the next page
  Timer? timer;
  @override
  void initState() {
    timer = Timer.periodic(Duration(seconds: 3), (_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WelcomeSplash()),
      );
    });
    super.initState();
  }

  //to cancel running activity of the timer
  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/logo.jpg', height: 194, width: 194),
      ),
    );
  }
}
