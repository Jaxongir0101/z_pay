import 'package:flutter/material.dart';
Widget PaymentsAppBar(context, appBarName,backRoute){
  return   AppBar(

    elevation: 0,
    backgroundColor: Colors.white,
    // leading: InkWell(
    //   child: Icon(Icons.arrow_back_ios_new_outlined),
    // ),
    actions: [
      SizedBox(width: 15,),
      Container(
        height:40 ,
        width: 40,
        margin: EdgeInsets.only(top: 8,bottom: 8,left: 6,),

        decoration: BoxDecoration(
          color: Colors.blue,

          borderRadius: BorderRadius.circular(5),

        ),
        child: InkWell(
          splashColor: Colors.white30,
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> backRoute));
            //Orqaga qaytish tugmasi
          },
          child: Container(
            height: 35,
            width: 35,
            margin: EdgeInsets.only(top: 0.5,bottom: 0.5,left: 0.5,right: 0.5),
            decoration: BoxDecoration(
              color: Colors.white,

              borderRadius: BorderRadius.circular(5),

            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(120),

              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.blue,
                size: 18,
              ),
            ),
          ),
        ),
      ),
      // SizedBox(width: 8,),
      Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                appBarName,
                style: TextStyle(color: Colors.blue, fontSize: 22),

              ),
              SizedBox(width: 30,),

            ],
          )),
      SizedBox(width: 20,),
    ],

  );
}