import 'package:flutter/material.dart';

import 'constants.dart';
import 'screens/favorite.dart';
import 'screens/home.dart';
import 'screens/settings.dart';

class MainTabBar extends StatefulWidget {
  static const String id = 'tabbar';

  @override
  _MainTabBarState createState() => _MainTabBarState();
}

class _MainTabBarState extends State<MainTabBar> {
  int _selectedIndex;
  List<Widget> _tabItems;

  initState() {
    super.initState();

    _selectedIndex = 1;

    _tabItems = [
      Settings(),
      Home(),
      Favorite(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/icons/menu_icon.png"),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "My points",
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(width: 15.0),
              Container(
                width: 40.0,
                height: 40.0,
                padding: EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(color: kOrangeLight, width: 3.0),
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "150",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w900,
                          color: kOrangeLight,
                        ),
                  ),
                ),
              ),
              SizedBox(width: 20.0),
            ],
          )
        ],
      ),
      body: _tabItems.elementAt(_selectedIndex),
      bottomNavigationBar: Stack(
        children: <Widget>[
          ClipPath(
            clipper: ClippingClass(),
            child: Container(
              width: double.infinity,
              height: 80.0,
              decoration: BoxDecoration(
                /* gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: [Colors.transparent, Color(0xFF5F8D29).withOpacity(0.1)],
                  stops: [0.0, 0.7],
                ),*/
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF5F8D29).withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 50,
                    offset: Offset(0, 40), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Container(
                    alignment: Alignment.bottomCenter,
                    width: 50.0,
                    height: 48.0,
                    child: Icon(Icons.settings),
                  ),
                  title: Text("Settings"),
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    width: 50.0,
                    height: 48.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFAA6D13).withOpacity(0.14),
                          spreadRadius: 3.0,
                          blurRadius: 10.0,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Icon(Icons.home, size: 30.0),
                  ),
                  title: Text("Home"),
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    alignment: Alignment.bottomCenter,
                    width: 50.0,
                    height: 48.0,
                    child: Icon(Icons.favorite),
                  ),
                  title: Text("Favorite"),
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: kOrangeLight,
              onTap: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 80);
    path.quadraticBezierTo(size.width / 4, size.height - 40, size.width / 2, size.height - 40);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height - 40, size.width, size.height - 80);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldCLipper) => false;
}
