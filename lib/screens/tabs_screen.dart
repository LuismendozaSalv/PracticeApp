import 'package:practice_app/screens/lobby_screen.dart';

import '../widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  TabScreen();

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<Map<String, Object>> _pages;

  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': LobbyScreen(),
        'title': 'Inicio',
      },
      {
        'page': LobbyScreen(),
        'title': 'Transferir',
      },
      {
        'page': LobbyScreen(),
        'title': 'Pagar',
      },
      {
        'page': LobbyScreen(),
        'title': 'Tarjetas',
      }
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final page = _pages[_selectedPageIndex]['page'] as Widget;
    final title = _pages[_selectedPageIndex]['title'] as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: page,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              blurRadius: 6,
            ),
          ],
        ),
        child: BottomNavigationBar(
            elevation: 4,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.blue,
            currentIndex: _selectedPageIndex,
            type: BottomNavigationBarType.shifting,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: _selectPage,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Icon(Icons.home),
                  title: Text('Inicio')),
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Icon(Icons.compare_arrows),
                  title: Text('Transferir')),
                 BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Icon(Icons.monetization_on),
                  title: Text('Pagar')),
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Icon(Icons.card_giftcard),
                  title: Text('Tarjetas')),
            ]),
      ),
    );
  }
}
