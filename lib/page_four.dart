import 'package:flutter/material.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.symmetric(horizontal: 32),
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF789276)),
            boxShadow: [
              BoxShadow(
                  color: Color(0xff97C096),
                  blurStyle: BlurStyle.outer,
                  blurRadius: 5)
            ],
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          'influxde.com',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
