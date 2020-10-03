import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';

class ChatAndAddToCart extends StatelessWidget {
  const ChatAndAddToCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding),
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding / 2,
        horizontal: kDefaultPadding
      ),
      height: 50,
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            FlatButton.icon(
              icon: SvgPicture.asset(
                "assets/icons/shopping-bag.svg",
                height: 18.0,
                ), 
              onPressed: null,
              label: Text("Add To Cart",
              style: TextStyle(color: Colors.white
              ),
            ),
          )
        ],
      )
    );
  }
}