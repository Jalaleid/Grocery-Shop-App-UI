// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app/model/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body:Consumer<CartModel>(
        builder: (context, value, child) {
          return  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Padding(
              padding: const EdgeInsets.only(right: 25,left: 15,bottom: 25),
              child: Text(
                'My Cart',
                style: GoogleFonts.notoSerif(
                  fontSize: 36,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.cartItems.length,
                itemBuilder: (BuildContext context, int index) { 
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(value.cartItems[index][2]),
                        ),
                        title: Text(value.cartItems[index][0]),
                        subtitle: Text('\$'+value.cartItems[index][1]),
                        trailing: IconButton(
                          onPressed: () => Provider.of<CartModel>(context , listen: false).removeItemFromCart(index),
                          icon: Icon(Icons.cancel)
                        ),
                      ),
                    ),
                  );
               },
              )
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(7)
                ),
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Price',
                          style: TextStyle(
                            color: Colors.green[100]
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '\$'+value.calucateTotale(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white , width: 1)
                      ),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Pay Now',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
           ],
          );
        },
      )
    );
  }
}