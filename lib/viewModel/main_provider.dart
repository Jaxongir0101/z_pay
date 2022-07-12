import 'package:flutter/widgets.dart';

class ViewModel extends ChangeNotifier {
  double indicatorNumber = 0;
  bool downTime = false;
  bool isPhoneCheck = false;
  bool comeInCheck = false;
  bool birth = false;
  String comeInputNumer = "";
  bool isPinCode = false;

  String pinOne = "";
  String pinTwo = "";
  String pinThree = "";
  String pinFour = "";

  indicatorIncrement() {
    indicatorNumber++;
    notifyListeners();
  }

  comeInputNumerSaved(String number) {
    comeInputNumer = number;
    notifyListeners();
  }

  comeInCheckNumber() {
    comeInCheck = true;
    notifyListeners();
  }

  numberCheck() {
    isPhoneCheck = true;
    notifyListeners();
  }

  yearCheck() {
    birth = true;
    notifyListeners();
  }

  circleDownTimeComplete() {
    downTime = true;
    notifyListeners();
  }

  isPinCodeOne(String pin1) {
    pinOne = pin1;
    notifyListeners();
  }

  isPinCodeTwo(String pin2) {
    pinTwo = pin2;
    notifyListeners();
  }

  isPinCodeThree(String pin3) {
    pinThree = pin3;
    notifyListeners();
  }

  isPinCodeFour(String pin4) {
    pinFour = pin4;
    notifyListeners();
  }

  pinCodeisCorrect() {
    String res = pinOne + pinTwo + pinThree + pinFour;
    print("------------------------$res");
    if (res.length == 3) {
      isPinCode = true;

      notifyListeners();
    }
  }
}
