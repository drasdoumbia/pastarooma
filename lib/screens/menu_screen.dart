import 'package:flutter/material.dart';

import '../constants.dart';
import 'menu_list.dart';

class MenuScreen extends StatelessWidget {
  static const id = 'menu_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
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
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            height: 60.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Pasta", style: Theme.of(context).textTheme.headline1),
                SizedBox(
                  child: Image.asset(
                    'assets/icons/adjuste.png',
                  ),
                ),
              ],
            ),
          ),
          MenuList()
        ],
      ),
    );
  }
}
