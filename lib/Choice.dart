import 'package:flutter/material.dart';
import 'package:trees_go/main.dart';

import 'Animals.dart';

class Choice extends StatefulWidget {
  const Choice({Key? key}) : super(key: key);

  @override
  _ChoiceState createState() => _ChoiceState();

}

class _ChoiceState extends State<Choice> {

  int _currentIndex = 0;
  final List _children = [
    Animals(),
    MyHomePage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffEC524B),
        selectedItemColor: Color(0xff9ad3bc),
        unselectedItemColor: Colors.white,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.add_business_outlined),
            title: Text('Find animals'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
