import 'package:flutter/material.dart';
//Tabs
import 'package:delivery_app2021/src/tabs/explore_tab.dart';
import 'package:delivery_app2021/src/tabs/favorite_tab.dart';
import 'package:delivery_app2021/src/tabs/my_order_tab.dart';
import 'package:delivery_app2021/src/tabs/profile_tab.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

  List<Widget> _widgetOption = [
    ExploreTab(),
    MyOrderTab(),
    FavoriteTab(),
    ProfileTab()
  ];

  int _selectedItemIndex = 0;

  void _cambiarWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOption.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }
  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30.0,
      selectedItemColor: Theme.of(context).accentColor,
      unselectedItemColor: Colors.grey,
      currentIndex: _selectedItemIndex,
      onTap: _cambiarWidget,
      showUnselectedLabels: true,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text('Explorar')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assessment),
          title: Text('Mis Ordenes')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          title: Text('Favoritos')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin),
          title: Text('Perfil')
        ),

      ],
    );

  }
}

