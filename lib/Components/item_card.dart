
import 'package:flutter/material.dart';
import 'package:foodtest/Models/Product.dart';
import 'package:like_button/like_button.dart';

import '../constants.dart';


class ItemCard extends StatelessWidget {
  final Product product;

  const ItemCard({
    Key? key,
    required this.product,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(KDefaultPadding),
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(
                    product.images
                ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Transform.translate(
                offset: const Offset(60, -60),
                child: Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 55.0, vertical: 65),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white.withOpacity(0.4)
                  ),
                  child: const LikeButton(
                    size: 20,
                    circleColor: CircleColor(
                        end: Colors.pinkAccent, start: Colors.pinkAccent),
                    bubblesColor: BubblesColor(
                        dotPrimaryColor: Colors.yellow,
                        dotSecondaryColor: Colors.pink),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: KDefaultPadding / 4),
            child: Text(
              product.name,
              style: const TextStyle(color: KPrimaryColor),
            ),
          ),
          Text(
            product.totalTime,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}