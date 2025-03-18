import 'dart:async';

import 'package:agric_nexus/onboarding/onboardingpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeSplash extends StatefulWidget {
  const WelcomeSplash({super.key});

  @override
  State<WelcomeSplash> createState() => _WelcomeSplashState();
}

class _WelcomeSplashState extends State<WelcomeSplash> {
  //timer to navigate to the next page
  Timer? timer;
  @override
  void initState() {
    timer = Timer.periodic(Duration(seconds: 3), (_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Onboardingpage()),
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff008532), Color(0xff001F0C)],
          ),
        ),
        child: Center(
          child: Text(
            'Welcome',
            style: GoogleFonts.poppins(
              fontSize: 33.2,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
