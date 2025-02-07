import 'package:dribble_parentpal/config/all_images.dart';
import 'package:dribble_parentpal/config/all_text_styles.dart';
import 'package:dribble_parentpal/config/all_texts.dart';
import 'package:flutter/material.dart';

class PostCardTopSec extends StatelessWidget {
  const PostCardTopSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      spacing: 10,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(AllImages.userImage),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AllTexts.userName,
              style: AllTextStyles.userNameBold.copyWith(fontSize: 18),
            ),
            Text(
                AllTexts.profession,
                style: AllTextStyles.tabTextStyle
            )
          ],
        ),
        const Spacer(),
        Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: 40,
            child: Text(
                '${AllTexts.time} ${AllTexts.ago}',
                style: AllTextStyles.tabTextStyle
            ),
          ),
        )
      ],
    );
  }
}
