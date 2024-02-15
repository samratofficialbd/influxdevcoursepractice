import 'package:flutter/material.dart';
import 'package:influxdevcoursepractice/custom_text_field.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const CustomTextField(
                enableBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFB1EA66),
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFB1EA66),
                    width: 2,
                  ),
                ),
              ),
              CustomTextField(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Color(0xFFB1EA66), width: 2),
                ),
                enableBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Color(0xFFB1EA66), width: 2),
                ),
              ),
              const CustomTextField(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                enableBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
              ),
              CustomTextField(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFB1EA66),
                    width: 2,
                  ),
                ),
                enableBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFB1EA66), width: 2),
                ),
              ),
              const SizedBox(height: 36.0),
              const CustomTextField(
                enableBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFB1EA66),
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFB1EA66),
                    width: 2,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
