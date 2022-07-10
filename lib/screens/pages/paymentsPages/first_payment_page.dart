import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:z_pay/screens/pages/paymentsPages/widget/payments_appbar.dart';

import 'mobile_pay_number.dart';

class PaymentHomePage extends StatefulWidget {
  const PaymentHomePage({Key? key}) : super(key: key);

  @override
  State<PaymentHomePage> createState() => _PaymentHomePageState();
}

class _PaymentHomePageState extends State<PaymentHomePage> {
  int itemNumber = 0;
  int crosAxisCount = 2;

  @override
  Widget build(BuildContext context) {
    String appBarName = "Платежи";
    var backRoute = "Bu yerga orqaga qaytish uchun page ni bering example MobilePaymentPage da bor !!";
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: PaymentsAppBar(context,appBarName,backRoute),
      ),
      body: SingleChildScrollView(child:
      SizedBox(
        width: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        Container(
        margin: EdgeInsets.only(left: 22, top: 44),
        child: Text(
          "Оплатить",
          style: TextStyle(fontSize: 28, color: Colors.blue),
        ),
      ),
        Container(
          margin: EdgeInsets.only(left: 22, top: 15),
          child: Text(
            "Ниже приведен список ",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
        SizedBox(height: 30,),

        GridView.count(
          crossAxisCount: 3,
          padding: EdgeInsets.symmetric(horizontal: 20),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          physics: ScrollPhysics(),
          shrinkWrap: true,
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                setState(() {
                  itemNumber = 1;
                });
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> MobilePaymentPage(context) ));
              },
              child: Container(
                height: 70,
                width: 65,
                decoration: BoxDecoration(
                    color: itemNumber == 1 ? Colors.blueGrey : Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/payments/ic_simcard.png", scale: 1.5,),
                      Text("Моб. связь",
                        style: TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                setState(() {
                  itemNumber = 2;
                });
              },
              child: Container(
                height: 70,
                width: 65,
                decoration: BoxDecoration(
                    color: itemNumber == 2 ? Colors.blueGrey : Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/payments/ic_internet.png", scale: 1.5,),
                      Text("Интернет",
                        style: TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                setState(() {
                  itemNumber = 3;
                });
              },
              child: Container(
                height: 70,
                width: 65,
                decoration: BoxDecoration(
                    color: itemNumber == 3
                        ? Colors.blueGrey : Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/payments/ic_movie.png", scale: 1.5,),
                      Text("Кино и ТВ",
                        style: TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                setState(() {
                  itemNumber = 4;
                });
              },
              child: Container(
                height: 70,
                width: 65,
                decoration: BoxDecoration(
                    color: itemNumber == 4 ? Colors.blueGrey : Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/payments/ic_playgames.png", scale: 1.5,),
                      Text("Развлечения",
                        style: TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                setState(() {
                  itemNumber = 5;
                });
              },
              child: Container(
                height: 70,
                width: 65,
                decoration: BoxDecoration(
                    color: itemNumber == 5 ? Colors.blueGrey : Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/payments/ic_wallet.png", scale: 1.5,),
                      Text("Web Кошельки",
                        style: TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                setState(() {
                  itemNumber = 6;
                });
              },
              child: Container(
                height: 70,
                width: 65,
                decoration: BoxDecoration(
                    color: itemNumber == 6 ? Colors.blueGrey : Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/payments/ic_goverment.png", scale: 1.5,),
                      Text("Гос. услуги",
                        style: TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                setState(() {
                  itemNumber = 7;
                });
              },
              child: Container(
                height: 70,
                width: 65,
                decoration: BoxDecoration(
                    color: itemNumber == 7 ? Colors.blueGrey : Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/payments/ic_telephone.png", scale: 1.5,),
                      Text("Телефония",
                        style: TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                setState(() {
                  itemNumber = 8;
                });
              },
              child: Container(
                height: 70,
                width: 65,
                decoration: BoxDecoration(
                    color: itemNumber == 8 ? Colors.blueGrey : Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/payments/ic_gas.png", scale: 1.5,),
                      Text("Коммуналка",
                        style: TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(

              // borderRadius: BorderRadius.circular(15),
              onTap: () {
                setState(() {
                  itemNumber = 9;
                });
              },
              child: Container(
                height: 70,
                width: 65,
                decoration: BoxDecoration(
                    color: itemNumber == 9 ? Colors.blueGrey : Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/payments/ic_charity.png", scale: 1.5,),
                      Text("Приюты",
                        style: TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

      ],
    ),),),
    );
  }
}
