import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sagehill/ui/Dashboard.dart';

class SplashScreenData extends StatefulWidget {
  SplashScreenData({super.key});

  @override
  _SplashScreenDataState createState() => _SplashScreenDataState();
}

class _SplashScreenDataState extends State<SplashScreenData> {
  startTime() async {
    var _duration = Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Dashboard()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // back in 30 minutes or 1 hr =========================== will start from here ........ wanna add  an animated splAsh screen
      body: Container(
        width: double.infinity,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 253, 255, 253)),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image(
                width: 220,
                image: AssetImage("assets/img/mlogo.png"),
                fit: BoxFit.cover),
            Spacer(),
            SizedBox(
                child:
                    Icon(Icons.shopping_bag, size: 45, color: Colors.orange)),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
