import 'package:flutter/material.dart';
import 'package:pastarooma/widgets/custom_button.dart';

import '../constants.dart';
import '../tabbar.dart';

class OrderSuccess extends StatelessWidget {
  static const id = 'order_success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop((context));
              });
        }),
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
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 50.0),
            Center(
              child: Text(
                "Your order is ready",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            SizedBox(height: 50.0),
            Container(
              margin: EdgeInsets.only(bottom: 40.0),
              padding: EdgeInsets.symmetric(vertical: 40.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF5F8D29).withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 30,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/undraw_on_the_way_ldaq.png',
                    width: 253.0,
                    height: 194.0,
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    "Our courier is in a hurry to\n deliver you an order",
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30.0),
                  CustomBtn(
                    width: 158.0,
                    btnBg: kOrangeLight,
                    buttonTitle: "Ok!",
                    btnTextStyle: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainTabBar(),
                        ),
                      );
                    },
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
