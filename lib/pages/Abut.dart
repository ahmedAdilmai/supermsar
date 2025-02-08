import 'package:flutter/material.dart';
import 'package:supermarkt/Shard/color.dart';

class abut extends StatelessWidget {
  const abut({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: Center(
        child: Text(
          "This is programing Ahmed",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
