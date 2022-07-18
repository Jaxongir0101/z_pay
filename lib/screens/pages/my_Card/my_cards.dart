import 'package:flutter/material.dart';

import '../../../database_helper.dart';
import '../../../viewModel/card.dart';

class MyCards extends StatefulWidget {
  const MyCards({super.key});

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [

          
          // FutureBuilder(
          //     future: DatabaseHelper.intance.getCards(),
          //     builder: (BuildContext context,
          //         AsyncSnapshot<List<PlasticCard>> snapshot) {
          //       return ListView.builder(
          //         padding: const EdgeInsets.only(bottom: 10),
          //         itemBuilder: (context, index) {
          //           return Container(child: Text("$index"),);
          //         },
          //         itemCount: snapshot.data?.length ?? 0,
          //       );
          //     }),
           InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: ((context) => MyCards()),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff427CF8),
                  Color(0xff1A3FC7),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Потвердить",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
