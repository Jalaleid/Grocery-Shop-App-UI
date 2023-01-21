// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:grocery_shop_app/pages/HomePage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 85),
            child: Image.asset('lib/images/1669582772949.png',width: 300),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'We deliver groceries at your doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'Fresh item everyday'
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(110,60)
            ),
            child: Text(
              'Get Started',
              style: TextStyle(color: Colors.white),
              ),
            onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {return HomePage();},),),
          ),
          const Spacer(),
        ],
      )
    );
  }
}