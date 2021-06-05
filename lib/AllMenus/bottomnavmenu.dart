import 'package:flutter/material.dart';

class Bottemnav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottemNavHome(),
    );
  }
}

class BottemNavHome extends StatefulWidget {
  @override
  _BottemNavHomeState createState() => _BottemNavHomeState();
}

class _BottemNavHomeState extends State<BottemNavHome> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: 1 == 1?A():B(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Image(
              image: AssetImage('assets/images/home.png'),
            ),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Image(
              image: AssetImage('assets/images/chat.png'),
            ),
            title: new Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: new Image(
              image: AssetImage('assets/images/cam.png'),
            ),
            title: new Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: new Image(
              image: AssetImage('assets/images/profile.png'),
            ),
            title: new Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: new Image(
              image: AssetImage('assets/images/cart.png'),
            ),
            title: new Text('Cart'),
          ),
        ],
      ),
    );
  }
}
