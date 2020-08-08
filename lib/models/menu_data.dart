import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'menu.dart';

class MenuData extends ChangeNotifier {
  List<Menu> _menuItems = [
    Menu(
        title: "Pasta Carbonara",
        description: "A truly authentic, traditional and classic Spaghetti Carbonara",
        points: 20,
        image: "assets/images/card_img_3.png"),
    Menu(
        title: "Spaghetti bolognese",
        description: "A true Italian classic with a meaty, chilli sauce",
        points: 25,
        image: "assets/images/card_img_2.png"),
    Menu(
        title: "Seafood pasta",
        description: "A mix of shrimp, clams, mussels and scallops",
        points: 30,
        image: "assets/images/card_img_1.png"),
  ];

  UnmodifiableListView<Menu> get menus {
    return UnmodifiableListView(_menuItems);
  }

  int get menuItemCount {
    return _menuItems.length;
  }
}
