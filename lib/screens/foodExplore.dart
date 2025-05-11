import 'package:flutter/material.dart';

class FoodExplore extends StatelessWidget {
  const FoodExplore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 9, 24, 32),
      child: const Center(
        child: Text(
          "explore",
          style: TextStyle(
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}