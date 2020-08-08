import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/menu_screen.dart';
import 'custom_button.dart';

class MenuCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.only(top: 20.0),
      height: 245.0,
      decoration: BoxDecoration(
        color: kSecondaryColor,
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
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: ClippingClass(),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Our menu", style: Theme.of(context).textTheme.headline1),
                    Text("Check out the delivery menu", style: Theme.of(context).textTheme.bodyText1),
                    SizedBox(height: 15.0),
                    CustomBtn(
                      width: 100.0,
                      btnBg: Colors.white,
                      btnTextStyle: Theme.of(context).textTheme.bodyText1.copyWith(color: kOrangeLight),
                      buttonTitle: "Show",
                      onTap: () => {
                        Navigator.pushNamed(context, MenuScreen.id),
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: -10.0,
            bottom: -50.0,
            width: 186.0,
            height: 186.0,
            child: Image.asset('assets/images/menu_img_1.png'),
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
    path.lineTo(0.0, size.height - 110);
    path.quadraticBezierTo(size.width / 4, size.height - 40, size.width / 2, size.height - 40);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height - 40, size.width, size.height - 110);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldCLipper) => false;
}
