import 'package:flutter/material.dart';

import 'app_drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _drawerKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        key: _drawerKey,
        appBar: AppBar(),
        drawer: AppDrawer(),
      ),
    );
  }
}
