import 'package:crime_mapping/screen/dasboard.dart';
import 'package:flutter/material.dart';
import 'package:crime_mapping/screen/akun.dart';

class Home extends StatefulWidget {
  //

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<Home> {
  final List<Map<String, Object>> _pages = [
    {
      'page': Dashboard(),
      'title': 'Dashboard',
    },
    {
      'page': Akun(),
      'title': 'Akun',
    },
  ];

  int _selectedPageIndex = 0;

  Future<void> _selectPage(int index) async {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withOpacity(0.3),
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.home),
            title: Text('Dashboard'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.person),
            title: Text('Akun'),
          ),
        ],
      ),
    );
  }
}
