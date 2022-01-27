
import 'package:flutter/material.dart';
import 'package:foodtest/Components/category_list.dart';
import 'package:foodtest/Components/item_card.dart';
import 'package:foodtest/Components/searchBar.dart';
import 'package:foodtest/Models/Product.dart';
import 'package:foodtest/Models/Product_api.dart';

import '../constants.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Product> _products;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getProduct();
  }

  Future<void> getProduct() async {
    _products = await ProductApi.getProduct();
    setState(() {
      _isLoading = false;
    });
  }
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: KBackgroundColor,
        selectedIconTheme: const IconThemeData(color: KPrimaryColor),
        selectedItemColor: KPrimaryColor,
        unselectedItemColor: Colors.grey.withOpacity(0.6),
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex= value ;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Icon(Icons.home_outlined, color: Color(0xff99999F)),
            ),
            label:"Home",
            activeIcon: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Icon(Icons.home, color: KPrimaryColor),
            ),
          ),
          // BottomNavigationBarItem(icon: Icon(Icons.home_filled,size: 30,), label: "Home"),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Icon(Icons.notifications_active_outlined, color: Color(0xff99999F)),
            ),
            label: "Notification",
            activeIcon: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Icon(Icons.notifications_active, color: KPrimaryColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Icon(Icons.person_outline_outlined, color: Color(0xff99999F)),
            ),
            label: "Profile",
            activeIcon: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Icon(Icons.person, color: KPrimaryColor),
            ),
          ),

        ],
      ),
      //extendBody: true,
      body:  _isLoading
          ? Center(child: CircularProgressIndicator()) :Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
           const Padding(
            padding: EdgeInsets.symmetric(horizontal: KDefaultPadding*2, vertical: KDefaultPadding * 3),
            child:SearchBar(),
          ),
           CategoriesList(),
          const Divider(
            thickness: 3,
            color: KPrimaryColor,
            indent: 10,
            endIndent: 10,
          ),
           Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
              child: GridView.builder(
                itemCount: _products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: KDefaultPadding,
                  crossAxisSpacing: KDefaultPadding,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: _products[index],
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
