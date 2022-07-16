import 'dart:async';

import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/splashPage/splash2.dart';

class SplashOne extends StatefulWidget {
  const SplashOne({Key? key}) : super(key: key);

  @override
  State<SplashOne> createState() => _SplashOneState();
}

class _SplashOneState extends State<SplashOne> {
  _initTimer() {
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SplashTwo(),
        ),
      );
    });
  }

  void initState() {
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height; //829

    final width = MediaQuery.of(context).size.width; //393
    print(height);
    print(width);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: height * 0.2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(
                    "assets/images/Vector.png",
                  ),
                  height: height * 0.072,
                  width: width * 0.153,
                ),
                SizedBox(
                  width: 16,
                ),
                Image(
                  image: AssetImage(
                    "assets/images/PAY.png",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.037,
            ),
            Column(
              children: [
                Text(
                  """technology inspired""".toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Color(0xff1D44CB)),
                ),
                Text(
                  "by transparency".toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Color(0xff1D44CB)),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.145,
            ),
            Image.asset(
              "assets/images/splash/splash1.png",
              height: height * 0.242,
              width: width * 0.782,
            ),
            SizedBox(height: height * 0.11),
            Text(
              "BUY",
              style: TextStyle(
                  color: Color(0xff1D44CB),
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
