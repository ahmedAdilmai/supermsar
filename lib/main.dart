// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supermarkt/pages/Home.dart';
import 'package:supermarkt/pages/Login.dart';
import 'package:supermarkt/pages/checkout.dart';
import 'package:supermarkt/provider/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return cart();
      },
      child: MaterialApp(
        home: login(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
