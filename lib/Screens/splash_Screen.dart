
import 'package:flutter/material.dart';
import 'package:foodtest/Components/imageComponents.dart';


import '../constants.dart';
import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
          children : [
            const Positioned(
                top: 20,
                child: imageComponent()
            ),
            //const SizedBox(height: 200,),
            Positioned(
              child: Column(
                children: [
                  const SizedBox(height: 600),
                  const Text(
                    'Start Cooking',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: KTextCOlor, letterSpacing: 1),
                  ),
                  const SizedBox(height: KDefaultPadding),
                  const Text(
                    "Let's join our community \n to cook better food!",
                    style: TextStyle(color: KGreyColor2, fontSize: 25, fontWeight: FontWeight.w100,letterSpacing: 1.5),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 70),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23),
                      ),
                      color: KPrimaryColor,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }
}


