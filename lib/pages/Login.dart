// ignore_for_file: camel_case_types, use_super_parameters

import 'package:flutter/material.dart';
import 'package:supermarkt/Shard/color.dart';
import 'package:supermarkt/Shard/costom.dart';
import 'package:supermarkt/pages/Home.dart';
import 'package:supermarkt/pages/rejester.dart';
import '../Shard/color.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Login"),
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
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Text(
                  "Sing in",
                  style: TextStyle(fontSize: 19),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(BTNgreen),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)))),
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'Do not have an account?',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => rejester()),
                      );
                    },
                    // ignore: prefer_const_constructors
                    child: Center(
                      child: Container(
                        child: Text(
                          'Regester',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
