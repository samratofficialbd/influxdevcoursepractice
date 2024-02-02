import 'package:flutter/material.dart';
import 'package:influxdevcoursepractice/page_five.dart';
import 'package:influxdevcoursepractice/page_four.dart';
import 'package:influxdevcoursepractice/page_one.dart';
import 'package:influxdevcoursepractice/page_three.dart';
import 'package:influxdevcoursepractice/page_two.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'One',
              ),
              Tab(
                text: 'Two',
              ),
              Tab(
                text: 'Three',
              ),
              Tab(
                text: 'Four',
              ),
              Tab(
                text: 'Five',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          PageOne(),
          PageTwo(),
          PageThree(),
          PageFour(),
          PageFive()
        ]),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.star,
                ),
                label: 'Page 1'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Page 2'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Page 3'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Page 4'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Page 5'),
          ],
        ),
      ),
    );
  }
}
