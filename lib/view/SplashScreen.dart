import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


   @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    Future.delayed(const Duration(seconds: 4) ,() {
    Navigator.of(context).pushNamedAndRemoveUntil('/loginpage', (Route<dynamic> route) => false);
  });
  }

  @override
  Widget build(BuildContext context) {
    final mediawidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child : Image.asset(
            'assets/logo.png',
            width: mediawidth*0.7,
          )
        )
      ),
    );
  }
}