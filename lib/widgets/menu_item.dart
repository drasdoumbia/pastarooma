import 'package:flutter/material.dart';
import 'package:pastarooma/constants.dart';

import 'custom_button.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final String description;
  final int points;
  final String image;
  final bool like;

  MenuItem({this.title, this.description, this.points, this.image, this.like});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF5F8D29).withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 30,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                width: 151.0,
                height: 167.0,
                child: Image.asset(image),
              ),
            ],
          ),
          SizedBox(width: 15.0),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      child: Image.asset('assets/icons/ellipse.png', width: 15.0, height: 15.0),
                    ),
                    SizedBox(width: 5.0),
                    Text("${points.toString()}",
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: kSecondaryColor)),
                    SizedBox(width: 3.0),
                    Text("points",
                        style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600, color: kSecondaryColor)),
                  ],
                ),
                SizedBox(height: 4.0),
                Text(title, style: Theme.of(context).textTheme.headline2.copyWith(fontFamily: 'Proxima Nova')),
                SizedBox(height: 4.0),
                Text(description, style: Theme.of(context).textTheme.bodyText2, softWrap: true, maxLines: 2),
                SizedBox(height: 4.0),
                Text(
                  "View details",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    color: kGreyDark,
                    decorationThickness: 2.5,
                    decoration: TextDecoration.underline,
                    decorationColor: kGreyDark,
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  children: <Widget>[
                    CustomBtn(
                      width: 126.0,
                      btnBg: Colors.white,
                      buttonTitle: "Order",
                      onTap: () => {
                        // Do something
                      },
                    ),
                    IconButton(
                      icon: Image.asset(
                        'assets/icons/heart_outer.png',
                        width: 19.0,
                        height: 17.0,
                      ),
                      onPressed: () => {
                        // Do something
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
