import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:influxdevcoursepractice/color.dart';
import 'package:influxdevcoursepractice/home_page.dart';

/**
 * class practice assignment
 * class 12
 **/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        title: 'Influx Dev',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: kColorPrimary),
          useMaterial3: true,
          textTheme: Typography.englishLike2018.apply(
              fontSizeFactor: 1.sp,
              bodyColor: Colors.black,
              fontFamily: GoogleFonts.dmSans().fontFamily),
        ),
        home: child,
      ),
      child: const Homepage(),
    );
  }
}
