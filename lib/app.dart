import 'package:flutter/material.dart';
import 'package:pastarooma/constants.dart';

import 'widgets/menu_card.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              MenuCard(),
            ],
          ),
        ),
      ),
    );
  }
}
