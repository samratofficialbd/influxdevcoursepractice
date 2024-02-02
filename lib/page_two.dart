import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 60,
          width: 180,
          decoration: BoxDecoration(
            color: Color(0xFFFFC209),
          ),
          alignment: Alignment.center,
          child: Text(
            'Class 3 Class 4',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
