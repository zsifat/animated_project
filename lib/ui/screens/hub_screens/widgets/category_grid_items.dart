import 'package:dribble_parentpal/config/all_text_styles.dart';
import 'package:dribble_parentpal/config/all_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/all_colors.dart';
import '../../../../config/all_images.dart';

Widget buildCategoryGrid() {
  final hubCategories = AllTexts.hubCategories;

  return GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        mainAxisExtent: 110
    ),
    itemCount: hubCategories.length,
    itemBuilder: (context, index) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AllColors.OffWhite
            ),
            child: SvgPicture.asset(hubCategories[index]['icon'],width: 30,height: 30,),
          ),
          const SizedBox(height: 8),
          Text(hubCategories[index]['label'], style: AllTextStyles.regularTextStyle.copyWith(fontWeight: FontWeight.bold)),
        ],
      );
    },
  );
}