import 'package:flutter/material.dart';
import '../../../constant.dart';

class CategoryList extends StatefulWidget {
  CategoryList({Key key}) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List categories = ['All', 'Jewelry', 'Electronics', 'Clothes', 'Books'];


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: kDefaultPadding / 2
      ),
      height: 30.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, int index) => GestureDetector(
          onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: kDefaultPadding),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          decoration: BoxDecoration(
            color: index == selectedIndex
            ? Colors.white.withOpacity(0.4)
            : Colors.transparent,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Text(
            categories[index],
            style: TextStyle(color: Colors.white),
          ),
        ),
        ),
      ),
    );
  }
}

