import 'package:flutter/material.dart';

class PageFive extends StatelessWidget {
  const PageFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 150+48+48,
        width: 150+48+48,
        child: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                child: MyBox(color: Colors.red, text: 'Red')),
            Positioned(
                top: 48,
                left: 48,
                child: MyBox(color: Colors.purple, text: 'Purple')),
            Positioned(
                top: 48+48,
                left: 48+48,
                child: MyBox(color: Colors.yellow, text: 'Yellow')),
          ],
        ),
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  final Color color;
  final String text;

  const MyBox({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      padding: EdgeInsets.all(8.0),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }
}
