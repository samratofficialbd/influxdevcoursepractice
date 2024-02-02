import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 60,
          width: 120,
          decoration: BoxDecoration(
              color: Color(0xFFFFC209),
              borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
