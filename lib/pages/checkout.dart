// ignore_for_file: prefer_const_constructors, unused_import, use_super_parameters

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supermarkt/Shard/appbar.dart';
import 'package:supermarkt/Shard/color.dart';
import 'package:supermarkt/modle/item.dart';
import 'package:supermarkt/provider/cart.dart';

class ChekOut extends StatelessWidget {
  const ChekOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartt =Provider.of<cart>(context);
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppBargreen,
        title: Text("checkout screen"),
        actions: [
          productsAprice()
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 550,
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: cartt.selectedProducts.length,
                itemBuilder:(BuildContext  context,int index) {
                 return Card(
                  child: ListTile(
                  title: Text(cartt.selectedProducts[index].name),
                    subtitle: Text("${cartt.selectedProducts[index].price} "),
                  
                    leading: CircleAvatar(backgroundImage: AssetImage(cartt.selectedProducts[index].imgpath),
                    ),
                  
                  trailing: IconButton(
                    onPressed: (){
  cartt.delete(cartt.selectedProducts[index]);
            
                    },
                    icon:  Icon(Icons.remove)),
                  
                  ),
                 ); 
                }) 
                ),
          ),
          ElevatedButton(
            onPressed: (){
            }, 
          child: Text("pay \$${cartt.price}",style:TextStyle(fontSize: 19)
          ),style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
            padding: MaterialStateProperty.all(EdgeInsets.all(12)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
          ),),
        ],
      ),
      );
    
  }
}