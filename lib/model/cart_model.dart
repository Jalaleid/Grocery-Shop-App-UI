
// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{

  final List _shopItems = [
    ["Avocado" , "4.00" , "lib/images/avocado.png" , Colors.green],
    ["Banana" , "2.50" , "lib/images/banana.png" , Colors.yellow],
    ["Chicken" , "12.00" , "lib/images/chicken.png" , Colors.brown],
    ["Water" , "4.00" , "lib/images/water.png" , Colors.blue],

  ];
   List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  void addItemToCart(int index){
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index){
    _cartItems.remove(_shopItems[index]);
    notifyListeners();
  }

  String calucateTotale(){
    double totalePrice = 0;
    for (int i = 0; i < _cartItems.length; i++){
      totalePrice += double.parse(_cartItems[i][1]);
    }
    return totalePrice.toStringAsFixed(2);
  } 
}