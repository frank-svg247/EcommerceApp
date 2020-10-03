import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/constant.dart';
import 'package:myapp/models/products.dart';

import 'components/body.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      )
    );
  }


  AppBar buildAppBar(BuildContext context) {
    return AppBar(
    backgroundColor: kBackgroundColor,
    elevation: 0,
    title: Text(
      "Back",
      style: Theme.of(context).textTheme.headline6,
    ),
    leading: IconButton(
      padding: EdgeInsets.only(left: kDefaultPadding),
      icon: SvgPicture.asset("assets/icons/back.svg"), 
      onPressed: (){
        Navigator.pop(context);
      }
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/cart_with_item.svg"),
        onPressed: (){},
      )
    ],
  );
  }
}