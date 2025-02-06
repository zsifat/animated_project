import 'package:dribble_parentpal/config/all_colors.dart';
import 'package:dribble_parentpal/config/all_images.dart';
import 'package:dribble_parentpal/config/all_text_styles.dart';
import 'package:dribble_parentpal/config/all_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostBottomSection extends StatelessWidget {
  final int likeCount;
  final int commentCount;

  const PostBottomSection(
      {required this.likeCount,
        required this.commentCount,
        super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Positioned(
      bottom: 10,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 38,
        width: width * 0.88,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: AllColors.transparentWhite),
        child: Row(
          spacing: 5,
          children: [
            // like section
            InkWell(
              onTap: () {
              },
              child: Row(
                spacing: 5,
                children: [
                  SvgPicture.asset(
                    AllImages.likeIcon,
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    "$likeCount ${AllTexts.likes}",
                    style: AllTextStyles.tabTextStyle
                        .copyWith(color: AllColors.mainBlack),
                  ),
                ],
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {},
              child: Row(
                spacing: 5,
                children: [
                  SvgPicture.asset(
                    AllImages.messageIcon,
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    "$commentCount ${AllTexts.comments}",
                    style: AllTextStyles.tabTextStyle
                        .copyWith(color: AllColors.mainBlack),
                  ),
                ],
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {},
              child: Row(
                spacing: 5,
                children: [
                  SvgPicture.asset(AllImages.shareIcon, height: 20, width: 20),
                  Text(
                    AllTexts.share,
                    style: AllTextStyles.tabTextStyle
                        .copyWith(color: AllColors.mainBlack),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
