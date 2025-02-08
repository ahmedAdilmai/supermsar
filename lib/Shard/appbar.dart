// ignore_for_file: camel_case_types, use_super_parameters

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supermarkt/Shard/color.dart';
import 'package:supermarkt/modle/item.dart';
import 'package:supermarkt/pages/checkout.dart';
import 'package:supermarkt/pages/detalis_Screen.dart';
import 'package:supermarkt/provider/cart.dart';

class productsAprice extends StatelessWidget {
  const productsAprice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<cart>(context);

    return Row(
      children: [
        Stack(
          children: [
            Container(
              child: Text(
                "${cartt.itemCount}",
                style: TextStyle(
                  fontSize: 19,
                  color: Color.fromARGB(211, 0, 0, 0),
                ),
              ),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: Color.fromARGB(211, 164, 255, 193),
                  shape: BoxShape.circle),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChekOut(),
                    ));
              },
              icon: Icon(Icons.add_shopping_cart),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text(
            "\$ ${cartt.price}",
            style: TextStyle(fontSize: 13),
          ),
        ),
      ],
    );
  }
}
