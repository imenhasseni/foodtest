
import 'package:flutter/material.dart';

import '../../../constants.dart';



class CategoriesList extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<CategoriesList> {
  List<String> categories = ["ALL", "Food", "Drink"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: KDefaultPadding /2),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          print(categories[index]);
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: KDefaultPadding * 1.8),
        padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: selectedIndex   ==index ? KPrimaryColor :Colors.grey.withOpacity(0.2),
        ),
        child:Text(
          categories[index],
          style: TextStyle(
            fontWeight: selectedIndex == index ? FontWeight.bold  : FontWeight.w500,
            color: selectedIndex == index ? Colors.white : Colors.black54.withOpacity(0.65),
          ),
        ),
      ),
    );
  }
}