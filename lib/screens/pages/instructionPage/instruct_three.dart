import 'package:flutter/material.dart';

import 'instruct_four.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:z_pay/viewModel/main_provider.dart';
import 'package:provider/provider.dart';

class InstructTree extends StatefulWidget {
  const InstructTree({Key? key}) : super(key: key);

  @override
  State<InstructTree> createState() => _InstructTreeState();
}

class _InstructTreeState extends State<InstructTree> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Padding(
                padding: const EdgeInsets.only(right: 32),
                child: Text(
                  "Пропустить",
                  textAlign: TextAlign.center,
                  maxLines: 20,
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color(0xff3554D1),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.064,
          ),
          Stack(
            children: [
              Center(
                child: Container(
                  height: height * 0.774,
                  width: 280,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage(
                          'assets/images/instruction/device.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Container(
                      height: height * 0.720,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: ExactAssetImage(
                              'assets/images/instruction/screen3.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [
                      0.1,
                      0.8,
                      0.7,
                      0.99,
                    ],
                    colors: [
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white10
                    ],
                  ),
                ),
                margin:
                    EdgeInsets.only(left: 0, right: 32, top: height * 0.3876),
                padding: EdgeInsets.only(top: height * 0.1292),
                child: Expanded(
                  child: Column(children: [
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Наслаждайтесь  вашей покупкой с\nприятными бонусами от ZPAY",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Color(0xff12154C),
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.4),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Совершайте покупки у наших партнеров и с\nприятным кешбеком от ZPAY",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: Color(
                          0xff878B9A,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.0775,
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
