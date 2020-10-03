import 'package:flutter/material.dart';
import 'package:myapp/models/products.dart';

import '../../../constant.dart';
import 'AddToCart.dart';
import 'colorPicker.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    Key key,
    @required 
    this.size, 
    this.product,
  }) : super(key: key);

  final Size size;
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.72,
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(42),
              bottomRight: Radius.circular(42),
            ),
          ),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: kDefaultPadding * 3
                    ),
                    width: size.width * 0.6,
                    height: size.width * 0.6,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: size.width * 0.006,
                    child: Image.asset(
                      "${product.image}",
                      // "assets/images/Item_1.png",
                      fit: BoxFit.cover,
                      width: size.width * 0.6,
                      height: size.width * 0.6,
                    ),
                  ),
                ],
              ),
              // ColorPicker
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ColorPicker(
                    fillColor: Color(0xFF80989A),
                    isSelected: true
                  ),
                  SizedBox(width: kDefaultPadding / 1.5),
                  ColorPicker(fillColor: Color(0xFFFF5200)),
                  SizedBox(width: kDefaultPadding),
                  ColorPicker(fillColor: kPrimaryColor)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Product Title
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.headline6,
                  ),
              ),
              // Product Price
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text(
                  "\$${product.price}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: kSecondaryColor
                  )
                ),
              ),
              // Product Description
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text(
                  product.description,
                  style: Theme.of(context).textTheme.bodyText1,
                  ),
              )
                ],
                )
            ],
          ),
        ),
        //AddToCart
        ChatAndAddToCart()
      ],
    );
  }
}



