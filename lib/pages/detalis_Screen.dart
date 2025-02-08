// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sort_child_properties_last, duplicate_ignore, file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supermarkt/Shard/appbar.dart';
import 'package:supermarkt/modle/item.dart';

import '../provider/cart.dart';

class Details extends StatefulWidget {
  Item product;
  Details({required this.product});
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<cart>(context);

    return Scaffold(
      body: Column(
        children: [
          Image.asset(widget.product.imgpath),
          SizedBox(
            height: 0,
          ),
          Text(
            "\$ ${widget.product.price}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 9,
          ),
          SizedBox(
            width: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(4),
                child: Text(
                  "New",
                  style: TextStyle(fontSize: 15),
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 129, 129),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              Icon(
                Icons.star,
                size: 26,
                color: Color.fromARGB(255, 255, 191, 0),
              ),
              Icon(
                Icons.star,
                size: 26,
                color: Color.fromARGB(255, 255, 191, 0),
              ),
              Icon(
                Icons.star,
                size: 26,
                color: Color.fromARGB(255, 255, 191, 0),
              ),
              Icon(
                Icons.star,
                size: 26,
                color: Color.fromARGB(255, 255, 191, 0),
              ),
              Icon(
                Icons.star,
                size: 26,
                color: Color.fromARGB(255, 255, 191, 0),
              ),
              SizedBox(
                width: 30,
              ),
              Row(
                children: [
                  Icon(
                    Icons.edit_location,
                    size: 23,
                    color: Color.fromARGB(168, 3, 65, 27),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Ahmed Shop",
                    style: TextStyle(fontSize: 19),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 60,
          ),
          SizedBox(
            child: Text(
              "Details:THESOFTWAREISPROVIDEDANdTHE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 14,
              ),
              maxLines: isShowMore ? 3 : null,
              overflow: TextOverflow.fade,
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                isShowMore = !isShowMore;
              });
            },
            child: Text(
              isShowMore ? "Show more" : "Show less",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        actions: [productsAprice()],
        backgroundColor: Colors.green,
        title: Text("Details"),
      ),
    );
  }
}
