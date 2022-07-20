import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:phonenumbers/phonenumbers.dart';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:z_pay/screens/pages/registrationPage/verification.dart';
import 'package:z_pay/viewModel/main_provider.dart';
import 'package:provider/provider.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final phoneNumberController = PhoneNumberEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    var maskFormatter = MaskTextInputFormatter(
        mask: '+998 ## ### ## ##',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);

 

    return Scaffold(
    backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: ElevatedButton(
                        
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xff3554D1),
                          size: 16,
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: Color(0xffEAEFF3),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 41,
                      width: 57,
                      child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "RU",
                                style: TextStyle(
                                    color: Color(0xff33409E),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                                 style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: Color(0xffEAEFF3),
                              ),
                            ),
                          ),
                        ),
                            ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 64,),
              Text(
                "Регистрация",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0xff3554D1),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Номер телефона",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                  color: Color(0xff12154C),
                ),
              ),
              SizedBox(height: 12),
              Container(
                height: 52,
                child: TextFormField(
                  inputFormatters: [maskFormatter],
                  textInputAction: TextInputAction.done,
                  autovalidateMode: AutovalidateMode.always,
                  keyboardType: TextInputType.phone,
                  style: TextStyle(
                      color: Color(0xff96A0B5),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xffEAEFF3), width: 2.0),
                      ),
                      isDense: true,
                      prefixIcon: Padding(
                          padding: EdgeInsets.fromLTRB(15, 15, 10, 15),
                          child: Image(
                            image: AssetImage(
                              "assets/images/login/flag.png",
                            ),
                          )),
                      prefixIconConstraints:
                          BoxConstraints(minWidth: 0, minHeight: 0),
                      suffix: context.watch<ViewModel>().isPhoneCheck
                          ? Icon(Icons.check)
                          : null),
                  validator: (String? value) {
                    print(value?.length);
                    if (value?.length == 17) {
                      context.read<ViewModel>().numberCheck();
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 140,),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xff427CF8),
                            Color(0xff1A3FC7),
                          ],
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => VerificationPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Продолжить",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     DotsIndicator(
              //       dotsCount: 3,
              //       position: 0,
              //       decorator: DotsDecorator(
              //         shapes: [
              //           RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(9.0)),
              //           RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(6.0)),
              //           RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(4.0)),
              //         ],
              //         activeShapes: [
              //           RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(16.0)),
              //           RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(16.0)),
              //           RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(16.0)),
              //         ],
              //         size: Size(6.0, 6),
              //         activeSize: Size(9.0, 9.0),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
