// ignore_for_file: prefer_const_constructors, camel_case_types, use_super_parameters, unnecessary_import, duplicate_import

import 'package:supermarkt/pages/Login.dart';
import 'package:supermarkt/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:supermarkt/Shard/color.dart';
import 'package:supermarkt/Shard/costom.dart';
import '../Shard/color.dart';

class rejester extends StatelessWidget {
  const rejester({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Rejester"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 33,
              ),
              MyTextField(
                textInputTypee: TextInputType.emailAddress,
                ispassword: false,
                hinttexttt: "Enter Your username:",
              ),
              const SizedBox(
                height: 33,
              ),
              MyTextField(
                textInputTypee: TextInputType.emailAddress,
                ispassword: false,
                hinttexttt: "Enter Your Email:",
              ),
              const SizedBox(
                height: 33,
              ),
              MyTextField(
                textInputTypee: TextInputType.emailAddress,
                ispassword: true,
                hinttexttt: "Enter Your password:",
              ),
              const SizedBox(
                height: 33,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => login()),
                  );
                },
                child: Text(
                  "Rejester",
                  style: TextStyle(fontSize: 19),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(BTNgreen),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
