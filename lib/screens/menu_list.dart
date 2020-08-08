import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/menu_data.dart';
import '../widgets/menu_item.dart';

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MenuData>(
      builder: (context, menuData, child) {
        return ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final menu = menuData.menus[index];
            return Column(
              children: <Widget>[
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: MenuItem(
                    image: menu.image,
                    points: menu.points,
                    title: menu.title,
                    description: menu.description,
                    like: menu.like,
                  ),
                ),
                SizedBox(height: 10.0),
              ],
            );
          },
          itemCount: menuData.menuItemCount,
        );
      },
    );
  }
}
