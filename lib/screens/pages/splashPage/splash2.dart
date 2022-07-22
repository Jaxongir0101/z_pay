import 'dart:async';

import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/splashPage/splash3.dart';

class SplashTwo extends StatefulWidget {
  const SplashTwo({Key? key}) : super(key: key);

  @override
  State<SplashTwo> createState() => _SplashTwoState();
}

class _SplashTwoState extends State<SplashTwo> {
  _initTimer() {
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SplashThree(),
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
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 50, top: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(
                        "assets/images/Vector.png",
                      ),
                      height: 58,
                      width: 58,
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
                  height: 30,
                ),
                Column(
                  children: [
                    Text(
                      """technology inspired""".toUpperCase(),
                      style: TextStyle(
                          fontFamily: "Mont",
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1D44CB)),
                    ),
                    Text(
                      "by transparency".toUpperCase(),
                      style: TextStyle(
                          fontFamily: "Mont",
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1D44CB)),
                    ),
                  ],
                ),
              ],
            ),
            Image.asset(
              "assets/images/splash/splash2.png",
              height: 200,
              width: 308,
            ),
            Text(
              "INVEST",
              style: TextStyle(
                  color: Color(0xff1D44CB),
                  fontSize: 24,
                  fontFamily: "Mont",
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
