import 'package:flutter/material.dart';
import 'package:google_search_engine/screens/search_screen.dart';
import 'package:google_search_engine/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Search Engine',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: SearchScreen(),
      // home: const ResponsiveScreen(
      //   smallScreen: SmallScreenWidget(),
      //   largeScreen: LargeScreenWidget(),
      // ),
    );
  }
}
