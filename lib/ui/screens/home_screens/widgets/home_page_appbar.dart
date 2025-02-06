
import 'package:dribble_parentpal/config/all_colors.dart';
import 'package:dribble_parentpal/config/all_images.dart';
import 'package:dribble_parentpal/config/all_text_styles.dart';
import 'package:dribble_parentpal/config/all_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageAppbar extends StatelessWidget {
  const HomePageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: AllColors.white,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // welcome text
          Text(AllTexts.welcome, style: AllTextStyles.welcomeTextStyle),
          // user name text
          Text(AllTexts.userName, style: AllTextStyles.userNameBold)
        ],
      ),
      scrolledUnderElevation: 0,
      // this add button
      actions: [
        InkWell(
          onTap: () {},
          child: Container(
              padding: const EdgeInsets.all(10),
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  color: AllColors.mainBlack,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: SvgPicture.asset(AllImages.addIcon, height: 20, width: 20)
          ),
        ),
        const SizedBox(width: 15)
      ],
    );
  }
}
