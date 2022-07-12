
import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/profilePage/profile_page.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
 
 
 int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black);
  static const List<Widget> _widgetOptions = <Widget>[

    Text(
      'Главная',
      style: optionStyle,
    ),
    Text(
      'Договора',
      style: optionStyle,
    ),
      Text(
      'Мои карты',
      style: optionStyle,
    ),
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
            icon: Icon(Icons.home,color: Colors.black,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business,color: Colors.black,),
            label: 'Bus',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel,color: Colors.black,),
            label: 'School',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.black,),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff3554D1),
       
        onTap: _onItemTapped,
      ),
    );
  }
}
