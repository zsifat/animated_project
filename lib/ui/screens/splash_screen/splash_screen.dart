import 'package:dribble_parentpal/config/all_colors.dart';
import 'package:dribble_parentpal/config/all_images.dart';
import 'package:dribble_parentpal/config/all_text_styles.dart';
import 'package:dribble_parentpal/config/all_texts.dart';
import 'package:dribble_parentpal/ui/screens/hub_screens/hub_screen.dart';
import 'package:dribble_parentpal/ui/screens/main-screen/main_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AllColors.splashBgColorBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Colors.transparent,
                BlendMode.multiply,
              ),
              child: Image.asset(
                AllImages.splashImage,
                width: size.width * 0.8,
                height: size.height * 0.5,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 20),
          Text(
              AllTexts.appName,
              style: AllTextStyles.splashTextStyle
          ),
          const SizedBox(height: 8),
          Text(
            AllTexts.motto,
            style: AllTextStyles.lightRegularTextStyle,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MainScreen(),));
              },
              child: Text(
                  "Let's start!",
                  style: AllTextStyles.regularTextStyle.copyWith(fontWeight: FontWeight.w700)
              ),
            ),
          ),
        ],
      ),
    );
  }
}

