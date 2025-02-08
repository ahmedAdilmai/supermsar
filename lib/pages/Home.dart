import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supermarkt/Shard/appbar.dart';
import 'package:supermarkt/Shard/color.dart';
import 'package:supermarkt/modle/item.dart';
import 'package:supermarkt/pages/Abut.dart';
import 'package:supermarkt/pages/checkout.dart';
import 'package:supermarkt/pages/detalis_Screen.dart';
import 'package:supermarkt/provider/cart.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<cart>(context);
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 33),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(
                          product: items[index],
                        ),
                      ));
                },
                child: GridTile(
                  child: Stack(children: [
                    Positioned(
                      top: 3,
                      bottom: 10,
                      right: 10,
                      left: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(55),
                        child: Image.asset(items[index].imgpath),
                      ),
                    ),
                  ]),
                  footer: GridTileBar(
                    backgroundColor: Color.fromARGB(66, 73, 127, 110),
                    trailing: IconButton(
                      color: Color.fromARGB(255, 62, 94, 70),
                      onPressed: () {
                        cartt.add(items[index]);
                      },
                      icon: Icon(Icons.add),
                    ),
                    leading: Text("\$ ${items[index].price}"),
                    title: Text(""),
                  ),
                ),
              );
            },
          )),
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asstes/img/bg_2.jpg"),
                    fit: BoxFit.cover)),
            currentAccountPicture: CircleAvatar(
                radius: 55, backgroundImage: AssetImage("asstes/img/my.jpg")),
            accountName: Text(
              "Ahmed Aldalmy",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            accountEmail: Text("Ahmed Aldilmy@gmail.com"),
          ),
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          ListTile(
            title: Text("My products", style: TextStyle(fontSize: 20)),
            leading: Icon(Icons.add_shopping_cart),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChekOut()));
            },
          ),
          ListTile(
            title: Text("About", style: TextStyle(fontSize: 20)),
            leading: Icon(Icons.help_center),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => abut()));
            },
          ),
          ListTile(
            title: Text("Logout", style: TextStyle(fontSize: 20)),
            leading: Icon(Icons.exit_to_app),
            onLongPress: () {},
          ),
          Container(
            margin: EdgeInsets.only(top: 350),
            child: Text(
              "Ahmed Devlober @2024",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ]),
      ),
      appBar: AppBar(
        actions: [productsAprice()],
        backgroundColor: Colors.green,
        title: Text("Home"),
      ),
    );
  }
}
