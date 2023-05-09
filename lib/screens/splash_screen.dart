import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'home_screen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPage();
}

class _SplashPage extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 35,
            ),
            Image(
              image: AssetImage("assets/images/logo2.png"),
              //  width: 500,
              height: 300,
            ),
            SizedBox(
              height: 4,
            ),
            Image(
              image: AssetImage("assets/images/logo3.png"),
              width: 100,
            ),
            SizedBox(
              height: 20,
            ),
            SpinKitRipple(
              color: Colors.green,
              size: 150.0,
            ),
          ],
        ),
      ),
    );
  }
}
