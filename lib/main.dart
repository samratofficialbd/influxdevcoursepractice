import 'package:flutter/material.dart';
import 'package:influxdevcoursepractice/home.dart';

/**
 * class practice assignment
 * class 4
 * class 5
 **/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Influx Dev',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: Homepage(),
    );
  }
}
