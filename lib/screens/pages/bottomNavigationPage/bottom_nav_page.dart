import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/Cantracts/dogovor_page.dart';
import 'package:z_pay/screens/pages/HomeScreen/home_screen_page.dart';
import 'package:z_pay/screens/pages/my_Card/my_card_one.dart';
import 'package:z_pay/screens/pages/profilePage/profile_page.dart';



class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
   DogovorPage(),
   MyCardOne(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Image(
              image: AssetImage(
                "assets/images/bottomNavigationBar/Home2.png",
              ),
              fit: BoxFit.cover,
            ),
            icon: Image(
              image: AssetImage(
                "assets/images/bottomNavigationBar/Home.png",
              ),
              // height: 26,
              // width: 25,
              fit: BoxFit.cover,
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            activeIcon: Image(
              image: AssetImage(
                "assets/images/bottomNavigationBar/Briefcase2.png",
              ),
              fit: BoxFit.cover,
            ),
            icon: Image(
              image: AssetImage(
                "assets/images/bottomNavigationBar/Briefcase.png",
              ),
              // height: 26,
              // width: 25,
              fit: BoxFit.cover,
            ),
            label: 'Договора',
          ),
          BottomNavigationBarItem(
            activeIcon: Image(
              image: AssetImage(
                "assets/images/bottomNavigationBar/Cardholder.png",
              ),
              fit: BoxFit.cover,
            ),
            icon: Image(
              image: AssetImage(
                "assets/images/bottomNavigationBar/Cardholder2.png",
              ),
              // height: 26,
              // width: 25,
              fit: BoxFit.cover,
            ),
            label: 'Мои карты',
          ),
          BottomNavigationBarItem(
            activeIcon: Image(
              image: AssetImage(
                "assets/images/bottomNavigationBar/Profile1.png",
              ),
              fit: BoxFit.cover,
            ),
            icon: Image(
              image: AssetImage(
                "assets/images/bottomNavigationBar/Profile.png",
              ),
              // height: 26,
              // width: 25,
              fit: BoxFit.cover,
            ),
            label: 'Профиль',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff3554D1),
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
