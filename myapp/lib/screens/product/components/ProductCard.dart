import 'package:flutter/material.dart';
import 'package:myapp/models/products.dart';

import '../../../constant.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,

    this.itemIndex,
    this.product,
    this.press

  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {

    //Size of the Screen
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 160,
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding 
      ),
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget> [
            //Background color blue.accent
            Container(
              height: 136,
              decoration: BoxDecoration(
                color: itemIndex.isEven ? kBlueColor 
                : kSecondaryColor,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [kDefaultShadow]
              ),
            ),
            //Background color white
            Container(
              height: 136,
              margin: EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [kDefaultShadow]
              ),
            ),
            // Product Image
            Positioned(
              top: 0,
              right: 0,
              child: Hero(
                tag: product.id, //Product Id
                child: Container(
                  height: 170,
                  width: 230,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.contain,
                    ),
                ),
              ),
            ),
            // Product Title and Price
            Positioned(
              left: 0,
              bottom: 0,
              child: SizedBox(
                height: 136,
                width: size.width -  200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical: kDefaultPadding / 2
                        ),
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1.5,
                        vertical: kDefaultPadding / 4
                      ),
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(22),
                          bottomLeft: Radius.circular(22)
                        )
                      ),
                      child: Text(
                        "\$${product.price}",
                        style: Theme.of(context).textTheme.button,
                      ),
                    )
                  ],
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}