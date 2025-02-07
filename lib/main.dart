import 'package:dribble_parentpal/ui/screens/main-screen/main_screen.dart';
import 'package:dribble_parentpal/ui/screens/home_screens/home_screens.dart';
import 'package:dribble_parentpal/ui/screens/search_screen/search_screen.dart';
import 'package:dribble_parentpal/ui/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:dribble_parentpal/config/all_colors.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: AllColors.white,
          scrolledUnderElevation: 0.0
        )
      ),
      home: SearchScreen(),
    );
  }
}
