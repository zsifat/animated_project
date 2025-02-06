import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/all_colors.dart';
import '../../../../config/all_images.dart';
import '../../../../config/all_text_styles.dart';

Widget buildMyGroupsSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("My groups", style: AllTextStyles.sectionHeadingTextStyle),
          Text("See all", style: AllTextStyles.regularTextStyle),
        ],
      ),
      const SizedBox(height: 16),
      GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.95,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return buildGroupCard(
            "Team sports",
            "+11 new posts",
            index%2==0 ? Color(0xFFFCE8E5) : Color(0xFFFDE4FF),
          );
        },
      ),
    ],
  );
}

Widget buildGroupCard(String title, String subtitle, Color color) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(30),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(15, 15)),
              color: Colors.white
          ),
          child: ClipOval(
            child: SvgPicture.asset(AllImages.diceIcon,width: 30,height: 30,),
          ),
        ),
        const SizedBox(height: 8),
        Text(
            overflow: TextOverflow.ellipsis,
            title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(subtitle, style: AllTextStyles.regularTextStyle.copyWith(color: AllColors.textGrey)),
        const Spacer(),
        Row(
          children: [
            Expanded(child: buildProfileStack()),
            IconButton.filledTonal(
                style: IconButton.styleFrom(
                    backgroundColor: Color(0xFFE38675),
                    fixedSize: Size(44, 44)
                ),
                onPressed: () {

                }, icon: Icon(Icons.arrow_forward))
          ],
        )
      ],
    ),
  );
}
Widget buildProfileStack() {
  return Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              spreadRadius: 1,
            ),
          ],
        ),
        padding: EdgeInsets.all(1),
        child: ClipOval(
          child: Image.asset(
            'assets/images/profile_image.jpg',
            fit: BoxFit.cover,
            width: 40,
            height: 40,
          ),
        ),
      ),
      Positioned(
        left: 24,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ],
          ),
          padding: EdgeInsets.all(1),
          child: ClipOval(
            child: Image.asset(
              'assets/images/profile_image.jpg',
              fit: BoxFit.cover,
              width: 40,
              height: 40,
            ),
          ),
        ),
      ),
      Positioned(
        left: 48,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ],
          ),
          padding: EdgeInsets.all(1),
          child: ClipOval(
              child: CircleAvatar(
                backgroundColor: AllColors.softCoral,
                child: Text('+96',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
              )
          ),
        ),
      ),
    ],
  );
}