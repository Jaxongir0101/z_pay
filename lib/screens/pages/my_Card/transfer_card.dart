import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TransferCard extends StatefulWidget {
  const TransferCard({super.key});

  @override
  State<TransferCard> createState() => _TransferCardState();
}

class _TransferCardState extends State<TransferCard> {
  TextEditingController _cardNomerTransController = TextEditingController();
  TextEditingController _cardMoneyTransController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var maskFormatter = MaskTextInputFormatter(
        mask: '#### #### #### ####',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff3554D1),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Перевод средств",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Mont",
            color: Color(0xff3554D1),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.only( right: 24,left: 24,top: 30,bottom: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/card/universalBank.png",
                    height: 22,
                    width: 115,
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Номер карты или телефон",
                    style: TextStyle(
                        color: Color(0xff12154C), fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 10),

                  Container(
                    height: 52,
          
                    child: TextFormField(
                      controller: _cardNomerTransController,
                      inputFormatters: [maskFormatter],
                      onSaved: (value) {},
                      autofocus: true,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: "0000 0000 0000 0000",
                        contentPadding: EdgeInsets.only(left: 18, right: 24),
                        suffixIcon: IconButton(
                            onPressed: () {
                              _cardNomerTransController.clear();
                            },
                            icon: Icon(
                              Icons.cancel,
                              color: Color(0xff878B9A),
                            )),
                        fillColor: Color(0xffEAEFF3),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                          color: Color(0xff878B9A),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                           color: Color(0xff3554D13),
                          ),
                        ),
                      ),
                      onChanged: (value) {
                        if (value.length == 19) {}
                      },
                      style: TextStyle(
                        color: Color(0xff878B9A),
                        fontWeight: FontWeight.w400,
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 6),

                  Text("Max Holloway",style: TextStyle(color: Color(0xff878B9A),fontWeight: FontWeight.w400),),
                  SizedBox(height: 30),

                  Text("Сумма перевода",style: TextStyle(color: Color(0xff12154C),fontWeight: FontWeight.w700,)),
                  SizedBox(height: 10),
      
                  Container(
                    height: 52,
          
                    child: TextFormField(
                      controller: _cardMoneyTransController,
            
                      onSaved: (value) {},
                      autofocus: true,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: "1 000 000 000",
                        contentPadding: EdgeInsets.only(left: 18, right: 24),
                      
                        fillColor: Color(0xffEAEFF3),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                      color: Color(0xff3554D13),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Color(0xff878B9A),
                          ),
                        ),
                      ),
                      onChanged: (value) {
                        if (value.length == 19) {}
                      },
                      style: TextStyle(
                        color: Color(0xff878B9A),
                        fontWeight: FontWeight.w400,
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 10),
             
                  Text("Лимит :1 000 000 000",style: TextStyle(color: Color(0xff878B9A),fontWeight: FontWeight.w400),),
                ],
              ),
            
                InkWell(
        onTap: () {
          // Navigator.of(context).pushReplacement(
          //   MaterialPageRoute(
          //     builder: ((context) => MyCards()),
          //   ),
          // );
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 30),
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
            "Продолжить",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
          )
            ],
          ),
        ),
      ),
    );
  }
}
