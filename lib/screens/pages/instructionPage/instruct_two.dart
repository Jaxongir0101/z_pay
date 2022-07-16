import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/instructionPage/instruct_three.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:z_pay/viewModel/main_provider.dart';
import 'package:provider/provider.dart';

class InstructTwo extends StatefulWidget {
  const InstructTwo({Key? key}) : super(key: key);

  @override
  State<InstructTwo> createState() => _InstructTwoState();
}

class _InstructTwoState extends State<InstructTwo> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
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
            height: height*0.063,
          ),
          Stack(
            children: [
              Center(
                child: Container(
                  height: height*0.774,
                  width: 280,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/instruction/device.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Container(
                      height: height*0.708,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/instruction/screen2.png'),
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
                margin: EdgeInsets.only(left: 0, right: 32, top: height*0.3876),
                padding: EdgeInsets.only(top: height*0.1292),
                child: Expanded(
                  child: Column(children: [
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Откройте для себя множество \nпартнерских магазинов с \nтоварами именно для вас",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Color(0xff12154C),
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.4),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Находите магазины по категориям, \nлокациям и вдохновляйтесь на новые \nпокупки!",
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
                      height: height*0.0775,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 32),
                          child: DotsIndicator(
                            dotsCount: 4,
                            position:
                                context.watch<ViewModel>().indicatorNumber,
                            decorator: DotsDecorator(
                              size: const Size.square(6.0),
                              activeSize: const Size(30.0, 6.0),
                              activeShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 141,
                          height: 42,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                context.read<ViewModel>().indicatorIncrement();
                              });
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => InstructTree(),
                                ),
                              );
                            },
                            child: Text(
                              "Дальше",
                              style: TextStyle(color: Color(0XFF2740A6)),
                            ),
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.only(
                                      top: 11,
                                      bottom: 11,
                                      left: 22,
                                      right: 22)),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xffBAD0FF)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
