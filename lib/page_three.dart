import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        width: 120,
        decoration: BoxDecoration(
            color: Color(0xFFF54335),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 5,
                  blurStyle: BlurStyle.outer,
                  spreadRadius: 0)
            ],
            borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
