import 'package:flutter/material.dart';
import 'package:pastarooma/constants.dart';

import 'widgets/contact_card.dart';
import 'widgets/custom_button.dart';
import 'widgets/menu_card.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: MenuCard(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Row(
                children: <Widget>[
                  ContactCard(
                    width: 138.0,
                    height: 110.0,
                    cardTitle: "Find us on map",
                    cardImage: Image.asset('assets/images/undraw_Map_dark_k9pw.png'),
                  ),
                  SizedBox(width: 20.0),
                  ContactCard(
                    width: 42.0,
                    height: 77.0,
                    cardTitle: "Phone us",
                    cardImage: Image.asset('assets/images/phone.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10.0),
                  Text(
                    "Personal Card",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    "Show your personal card and get the points",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(height: 20.0),
                  CustomBtn(
                    width: 158.0,
                    btnBg: kOrangeLight,
                    btnTextStyle: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white),
                    buttonTitle: "Show",
                    onTap: () => {
                      // Do something
                    },
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: 190.0,
                    child: Image.asset('assets/images/qr_code.png'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
