import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:z_pay/screens/pages/my_Card/card_add.dart';

class MyCardOne extends StatefulWidget {
  const MyCardOne({super.key});

  @override
  State<MyCardOne> createState() => _MyCardOneState();
}

class _MyCardOneState extends State<MyCardOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f4f7),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Мои карты",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Mont",
            color: Color(0xff3554D1),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/card/cardZero.png"),
            Column(
              children: [
                Text(
                  "Пожалуйста добавьте карту",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff3554D1),
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 14),
                Text(
                  "Нет доступных карт",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff878B9A),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 20),
                Container(
                  padding:
                      EdgeInsets.only(right: 20, top: 30, bottom: 30, left: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.bottomRight,
                          colors: [Color(0xff3554D1), Color(0xff1E3CA5)])),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 195,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Кошелек Кешбека",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Пройдите Верификацию чтобы активировать кошелек",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff46EBA2),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Image.asset("assets/images/card/wallet.png"),
                      ]),
                ),
                SizedBox(height: 16),
                RawMaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CardAddPage()));
                  },
                  elevation: 0.0,
                  fillColor: Color(0xff33409E),
                  child: Icon(
                    Icons.add,
                    size: 35.0,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(10.0),
                  shape: CircleBorder(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
