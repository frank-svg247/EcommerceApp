import 'package:flutter/material.dart';
import 'package:myapp/models/products.dart';
import 'package:myapp/screens/detail/components/productDetail.dart';

class Body extends StatelessWidget {
  const Body({Key key, this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) { 
    Size size = MediaQuery.of(context).size;
    return SafeArea(
          bottom: false,
          child: Column(
          children: <Widget>[
            // Product Cart
            ProductDetail(
              size: size,
              product: product,
              ),
            //End Of ProductCard
          ],
        ),
    );
  }
}

