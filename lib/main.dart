import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/bottomNavigationPage/bottom_nav_page.dart';
import 'package:z_pay/screens/pages/password/password.dart';
import 'package:z_pay/screens/pages/splashPage/splash1.dart';
import 'package:flutter/services.dart';
import 'package:z_pay/viewModel/card_provider.dart';
import 'package:z_pay/viewModel/main_provider.dart';
import 'package:provider/provider.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => CardProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        unselectedWidgetColor: Colors.white, // <-- your color
      ),
      debugShowCheckedModeBanner: false,
      home: SplashOne(),
    );
  }
}
