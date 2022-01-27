import 'package:flutter/material.dart';
import 'package:foodtest/Models/Product.dart';

class imageComponent extends StatelessWidget {

  const imageComponent({
    Key? key,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          height: 350,
          width: 350,
          color: Colors.transparent,
        ),
        Positioned(
          left: 80,
          bottom: 150,
          child: Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: Colors.red

            ),
          ),
        ),
        Positioned(
          left: 148,
          bottom: 0,
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: Colors.red
            ),
          ),
        ),
        Positioned(
          left: 200,
          bottom: -120,
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.deepPurple,
            ),
          ),
        ),
        Positioned(
          left: 20,
          bottom: 10,
          child: Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.pink,
            ),
          ),
        ),
        Positioned(
          left: 80,
          bottom: -100,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.brown,
            ),
          ),
        ),
        Positioned(
          left: 320,
          bottom: -30,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey,
            ),
          ),
        ),
        Positioned(
          left: 340,
          bottom: 90,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.lightBlue,
            ),
          ),
        ),
        Positioned(
          left: 230,
          bottom: 180,
          child: Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}