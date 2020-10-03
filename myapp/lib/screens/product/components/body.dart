import 'package:flutter/material.dart';
import 'package:myapp/screens/detail/detail_screen.dart';
import 'package:myapp/screens/product/components/searchBox.dart';
import 'package:myapp/models/products.dart';
import '../../../constant.dart';
import 'ProductCard.dart';
import 'categoryList.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(),
          CategoryList(),    
          SizedBox(height: kDefaultPadding / 2,),
          Expanded(
            child: Stack(
              children: <Widget> [
                // ProductCard Background
                Container(
                  margin: EdgeInsets.only(top: 90),
                  decoration: BoxDecoration(
                  color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    )
                  ),
              ),
              // ProductCard
              ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) => ProductCard(
                  itemIndex: index,
                  product: products[index],
                  press: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen(
                        product: products[index],
                      )),
                    );
                  }
                ), 
              ),
              ]
            ),
          ),
        ]
      ),
    );
  }
}





