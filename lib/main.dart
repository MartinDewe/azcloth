import 'package:azcloth/view/Login.dart';
import 'package:azcloth/view/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp( 
    home: const SplashScreen(),
    routes: {
      '/loginpage': (context) => const LoginPage(),
    },
    ));
}

