import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:influxdevcoursepractice/utils.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          padding: EdgeInsets.all(8),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: numberList.length,
          itemBuilder: (context, index) {
            final item = numberList[index];
            return Container(
              color: Colors.green,
              alignment: Alignment.center,
              height: 100,
              child: Text(
                item,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white),
              ),
            );
          },
        ),
      ),
    );
  }
}
