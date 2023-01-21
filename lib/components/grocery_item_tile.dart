

// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, avoid_unnecessary_containers, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {

   final String ItemName;
   final String ItemPice;
   final String imagePath;
   final Color;
   void Function()? onPressed;

  GroceryItemTile({
    super.key,
    required this.ItemName,
    required this.ItemPice,
    required this.imagePath,
    required this.Color,
    required this.onPressed
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
        color: Color[100],
        borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              imagePath,
              height: 64,
            ),

            Text(ItemName),

            MaterialButton(
              color: Color[800],
              onPressed: onPressed,
              child: Text(
                '\$$ItemPice',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                  
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}