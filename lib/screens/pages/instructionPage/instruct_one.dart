import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/instructionPage/instruct_two.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:z_pay/viewModel/main_provider.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../registrationPage/login.dart';

class InstructionOne extends StatefulWidget {
  const InstructionOne({Key? key}) : super(key: key);

  @override
  State<InstructionOne> createState() => _InstructionOneState();
}

class _InstructionOneState extends State<InstructionOne> {
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    List list = [
      Container(
        height: 290,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [
              0.1,
              0.8,
              0.7,
              0.99,
            ],
            colors: [Colors.white, Colors.white, Colors.white, Colors.white10],
          ),
        ),
        margin: EdgeInsets.only(left: 20, right: 2, top: height * 0.3876),
        padding: EdgeInsets.only(top: height * 0.1292),
        child: Expanded(
          child: Column(children: [
            SizedBox(
              height: 8,
            ),
            Text(
              "Приобретайте в рассрочку \nс ZPAY менее чем за 2 минуты",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Color(0xff12154C),
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.4),
            ),
            SizedBox(height: 10),
            Text(
              "Покупайте сейчас и платите равными \nчастями в срок до 6 месяцев! Пройдите  \nбыструю регистрацию, имея только \nПаспорт и платежную карту ",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                color: Color(
                  0xff878B9A,
                ),
              ),
            ),
          ]),
        ),
      ),
      Container(
        height: 290,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [
              0.1,
              0.8,
              0.7,
              0.99,
            ],
            colors: [Colors.white, Colors.white, Colors.white, Colors.white10],
          ),
        ),
        margin: EdgeInsets.only(left: 20, right: 2, top: height * 0.3876),
        padding: EdgeInsets.only(top: height * 0.1292),
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
          ]),
        ),
      ),
      Container(
        height: 290,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [
              0.1,
              0.8,
              0.7,
              0.99,
            ],
            colors: [Colors.white, Colors.white, Colors.white, Colors.white10],
          ),
        ),
        margin: EdgeInsets.only(left: 20, right: 2, top: height * 0.3876),
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
          ]),
        ),
      ),
      Container(
        height: 290,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [
              0.1,
              0.8,
              0.7,
              0.99,
            ],
            colors: [Colors.white, Colors.white, Colors.white, Colors.white10],
          ),
        ),
        margin: EdgeInsets.only(left: 20, right: 2, top: height * 0.3876),
        padding: EdgeInsets.only(top: height * 0.1292),
        child: Expanded(
          child: Column(children: [
            SizedBox(
              height: 8,
            ),
            Text(
              "Просматривайте и управляйте\nсвоими покупками!",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Color(0xff12154C),
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.4),
            ),
            SizedBox(height: 10),
            Text(
              "Просматривайте свои прошлые и текущие\nдоговора, и платежи. Управляйте своими\nданными в едином приложении",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                color: Color(
                  0xff878B9A,
                ),
              ),
            ),
          ]),
        ),
      ),
    ];

    List imagesList = [
      'assets/images/instruction/device1.png',
      'assets/images/instruction/device2.png',
      'assets/images/instruction/device3.png',
      'assets/images/instruction/device4.png',
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:const [
              Padding(
                padding:  EdgeInsets.only(right: 32),
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
            height: 20,
          ),
          Stack(
            children: [
              Center(
                child: Container(
                  height: height * 0.77,
                  width: 280,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagesList[
                          context.watch<ViewModel>().indicatorNumber.toInt()]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  list[context.watch<ViewModel>().indicatorNumber.toInt()],
                  context.watch<ViewModel>().indicatorNumber.toInt() == 3
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: 330,
                                height: 50,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color(0xff427CF8),
                                        Color(0xff1A3FC7),
                                      ]),
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                            color: Color.fromRGBO(0, 0, 0,
                                                0.57), //shadow for button
                                            blurRadius:
                                                5) //blur radius of shadow
                                      ]),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      onSurface: Colors.transparent,
                                      shadowColor: Colors.transparent,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: ((context) =>
                                                  LoginPage())));
                                    },
                                    child: Text(
                                      "Пройти регистрацию",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
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
                                    context
                                        .read<ViewModel>()
                                        .indicatorIncrement();
                                  });
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
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xffBAD0FF)),
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
                        )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
