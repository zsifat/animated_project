import 'package:dribble_parentpal/config/all_colors.dart';
import 'package:dribble_parentpal/config/all_text_styles.dart';
import 'package:dribble_parentpal/config/all_texts.dart';
import 'package:dribble_parentpal/ui/screens/search_screen/models/hashtag_model.dart';
import 'package:flutter/material.dart';

class HashtagResults extends StatelessWidget {
  final HashTagModel model;

  const HashtagResults({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          spacing: 10,
          children: [
            Container(
              alignment: Alignment.center,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AllColors.searchBackGrey,
              ),
              child: Text(AllTexts.hash, style: AllTextStyles.userNameBold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.title,
                  style: AllTextStyles.hashTagTitleStyle,
                ),
                Text(
                  "${model.totalViews} ${AllTexts.views}",
                  style: AllTextStyles.tabTextStyle,
                ),
              ],
            )
          ],
        ),
      ),


    );
  }
}
