import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/Cantracts/contracts.dart';


class DogovorPage extends StatefulWidget {
  const DogovorPage({Key? key}) : super(key: key);

  @override
  State<DogovorPage> createState() => _DogovorPageState();
}

class _DogovorPageState extends State<DogovorPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title:Text(
          "Мои договора",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Mont",
            color: Color(0xff3554D1),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ) ,
      ),
      body: Column(
        children: [

         SingleChildScrollView(
           child: Column(
             children: [
               SizedBox(height: 10,),
               InkWell(
                 onTap:(){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Contracts()));
                 },
                 child: Stack(
                   children: [
                     Container(
                       margin: EdgeInsets.all(12),
                       padding: EdgeInsets.all(10),
                       width: double.infinity,
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(10)),
                       child: Row(
                         children: [
                           Image(
                             image: AssetImage("assets/images/dogovor/magazin.png"),
                             height: 91,
                             width: 107,
                           ),
                           Padding(
                             padding: const EdgeInsets.only(
                               top: 0,
                               left: 15,
                               bottom: 20,
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Container(
                                   child: Column(
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text(
                                         "MediaPark",
                                         style: TextStyle(
                                           fontWeight: FontWeight.w800,
                                           fontSize: 14,
                                           color: Colors.black,
                                         ),
                                       ),
                                       SizedBox(
                                         height: 4,
                                       ),
                                       Text(
                                         "№202013 от 22.01.2022",
                                         style: TextStyle(fontWeight: FontWeight.w600),
                                       ),
                                       SizedBox(height: 20),
                                       Row(
                                         children: [
                                           Image.asset(
                                             "assets/images/dogovor/Calendar.png",
                                             height: 14,
                                             width: 13,
                                           ),
                                           SizedBox(
                                             width: 6,
                                           ),
                                           Text(
                                             "Срок рассрочки: 12 месяцев",
                                             style: TextStyle(
                                               color: Color(0xff6B7280),
                                               fontSize: 10,
                                               fontWeight: FontWeight.w600,
                                             ),
                                           )
                                         ],
                                       ),
                                     ],
                                   ),
                                 ),
                                 Container(
                                   decoration: BoxDecoration(
                                     color: Color(0xff33409E),
                                     borderRadius: BorderRadius.circular(5),
                                   ),
                                   padding: EdgeInsets.all(6),
                                   child: Text(
                                     "1/6",
                                     style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 11,
                                         fontWeight: FontWeight.w500),
                                   ),
                                 ),
                               ],
                             ),
                           )
                         ],
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.only(left: width * 0.585),
                       padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                       decoration: BoxDecoration(
                           border: Border.all(color: Color(0xff32B179)),
                           color: Color(0xffEBFFF4),
                           borderRadius: BorderRadius.circular(32)),
                       child: Text(
                         "Активный",
                         style: TextStyle(
                           fontSize: 12,
                           fontWeight: FontWeight.w600,
                           color: Color(0xff218F5F),
                         ),
                       ),
                     )
                   ],
                 ),
               ),

                 InkWell(
                   onTap:(){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Contracts()));
                   },
                   child: Stack(
                     children: [
                       Container(
                         margin: EdgeInsets.all(12),
                         padding: EdgeInsets.all(10),
                         width: double.infinity,
                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(10)),
                         child: Row(
                           children: [
                             Image(
                               image: AssetImage("assets/images/dogovor/magazin.png"),
                               height: 91,
                               width: 107,
                             ),
                             Padding(
                               padding: const EdgeInsets.only(
                                 top: 0,
                                 left: 15,
                                 bottom: 20,
                               ),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     child: Column(
                                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text(
                                           "MediaPark",
                                           style: TextStyle(
                                             fontWeight: FontWeight.w800,
                                             fontSize: 14,
                                             color: Colors.black,
                                           ),
                                         ),
                                         SizedBox(
                                           height: 4,
                                         ),
                                         Text(
                                           "№202013 от 22.01.2022",
                                           style: TextStyle(fontWeight: FontWeight.w600),
                                         ),
                                         SizedBox(height: 20),
                                         Row(
                                           children: [
                                             Image.asset(
                                               "assets/images/dogovor/Calendar.png",
                                               height: 14,
                                               width: 13,
                                             ),
                                             SizedBox(
                                               width: 6,
                                             ),
                                             Text(
                                               "Срок рассрочки: 12 месяцев",
                                               style: TextStyle(
                                                 color: Color(0xff6B7280),
                                                 fontSize: 10,
                                                 fontWeight: FontWeight.w600,
                                               ),
                                             )
                                           ],
                                         ),
                                       ],
                                     ),
                                   ),
                                   Container(
                                     decoration: BoxDecoration(
                                       color: Color(0xff33409E),
                                       borderRadius: BorderRadius.circular(5),
                                     ),
                                     padding: EdgeInsets.all(6),
                                     child: Text(
                                       "1/6",
                                       style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 11,
                                           fontWeight: FontWeight.w500),
                                     ),
                                   ),
                                 ],
                               ),
                             )
                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(left: width * 0.585),
                         padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                         decoration: BoxDecoration(
                             border: Border.all(color: Color(0xff33409E)),
                             color: Color(0xffB0B8F7),
                             borderRadius: BorderRadius.circular(32)),
                         child: Text(
                           "Активный",
                           style: TextStyle(
                             fontSize: 12,
                             fontWeight: FontWeight.w600,
                             color: Color(0xff33409E),
                           ),
                         ),
                       )
                     ],
                   ) ,
                 )
             ],
           ),
         )
        ],
      ),
    );
  }
}
