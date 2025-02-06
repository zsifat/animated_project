import 'package:dribble_parentpal/config/all_colors.dart';
import 'package:dribble_parentpal/config/all_images.dart';
import 'package:dribble_parentpal/config/all_text_styles.dart';
import 'package:dribble_parentpal/ui/screens/home_screens/models/post_model.dart';
import 'package:dribble_parentpal/ui/screens/home_screens/widgets/post_bottom_section.dart';
import 'package:dribble_parentpal/ui/screens/home_screens/widgets/post_card_top_sec.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostCard extends StatelessWidget {
  final PostModel model;
  const PostCard({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(15),
      width: width,
      child: Column(
        children: [
          // post top section
          const PostCardTopSec(),
          const SizedBox(height: 15),
          Text(
            model.postText,
            style:
                AllTextStyles.tabTextStyle.copyWith(color: AllColors.mainBlack),
          ),
          const SizedBox(height: 10),
          // Image section
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 250,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: AssetImage(model.postImage),
                    fit: BoxFit.cover
                  )
                )
              ),
              Positioned(
                top: 10,
                right: 10,
                child: InkWell(
                  onTap: (){
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: AllColors.searchBackGrey,
                      shape: BoxShape.circle
                    ),
                    child: SvgPicture.asset(AllImages.threeDotIcon, height: 40, width: 10)
                  ),
                ),
              ),
              PostBottomSection(likeCount: model.likes, commentCount: model.comments,)
            ],
          )
        ],
      ),
    );
  }
}
